class FontAutocomplete < ApplicationRecord
  attr_accessor :term, :popularity

  def self.terms_for(prefix)
    $redis.zrevrange("font-autocomplete:#{prefix.downcase}", 0, 9)  
  end

  def self.index_fonts
    Font.find_each do |font|
      index_term(font.name)
      # index_term(font.category.name)
      # index_term(theme.tags.map(&:name).join("\n"))
      font.name.split.each {|t| index_term(t)}
    end
  end

  def self.index_term(term)
    1.upto(term.length - 1) do |n|
      prefix = term[0, n]
      $redis.zincrby("font-autocomplete:#{prefix.downcase}", 1, term.downcase)
    end
  end
end
