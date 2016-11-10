class T3dAutocomplete < ApplicationRecord
  attr_accessor :term, :popularity

  def self.terms_for(prefix)
    $redis.zrevrange("t3d-autocomplete:#{prefix.downcase}", 0, 9)  
  end

  def self.index_t3ds
    T3d.find_each do |t3d|
      index_term(t3d.name)
      index_term(t3d.category.name)
      # index_term(theme.tags.map(&:name).join("\n"))
      t3d.name.split.each {|t| index_term(t)}
    end
  end

  def self.index_term(term)
    1.upto(term.length - 1) do |n|
      prefix = term[0, n]
      $redis.zincrby("t3d-autocomplete:#{prefix.downcase}", 1, term.downcase)
    end
  end
end
