class VideofxAutocomplete < ApplicationRecord
  attr_accessor :term, :popularity

  def self.terms_for(prefix)
    $redis.zrevrange("videofx-autocomplete:#{prefix.downcase}", 0, 9)  
  end

  def self.index_videofxes
    Videofx.find_each do |videofx|
      index_term(videofx.name)
      index_term(videofx.category.name)
      # index_term(theme.tags.map(&:name).join("\n"))
      videofx.name.split.each {|t| index_term(t)}
    end
  end

  def self.index_term(term)
    1.upto(term.length - 1) do |n|
      prefix = term[0, n]
      $redis.zincrby("videofx-autocomplete:#{prefix.downcase}", 1, term.downcase)
    end
  end
end
