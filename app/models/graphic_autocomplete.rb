class GraphicAutocomplete < ApplicationRecord
  attr_accessor :term, :popularity

  def self.terms_for(prefix)
    $redis.zrevrange("graphic-autocomplete:#{prefix.downcase}", 0, 9)  
  end

  def self.index_graphics
    Graphic.find_each do |graphic|
      index_term(graphic.name)
      index_term(graphic.category.name)
      # index_term(theme.tags.map(&:name).join("\n"))
      graphic.name.split.each {|t| index_term(t)}
    end
  end

  def self.index_term(term)
    1.upto(term.length - 1) do |n|
      prefix = term[0, n]
      $redis.zincrby("graphic-autocomplete:#{prefix.downcase}", 1, term.downcase)
    end
  end
end

