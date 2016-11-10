class ThemeAutocomplete < ApplicationRecord
  attr_accessor :term, :popularity

  def self.terms_for(prefix)
    $redis.zrevrange("theme-autocomplete:#{prefix.downcase}", 0, 9)  
  end

  def self.index_themes
    Theme.find_each do |theme|
      index_term(theme.name)
      index_term(theme.category.name)
      # index_term(theme.tags.map(&:name).join("\n"))
      theme.name.split.each {|t| index_term(t)}
    end
  end

  def self.index_term(term)
    1.upto(term.length - 1) do |n|
      prefix = term[0, n]
      $redis.zincrby("theme-autocomplete:#{prefix.downcase}", 1, term.downcase)
    end
  end

end
