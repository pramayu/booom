class CodeAutocomplete < ApplicationRecord
  attr_accessor :term, :popularity

  def self.terms_for(prefix)
    $redis.zrevrange("code-autocomplete:#{prefix.downcase}", 0, 9)  
  end

  def self.index_codes
    Code.find_each do |code|
      index_term(code.name)
      index_term(code.category.name)
      # index_term(theme.tags.map(&:name).join("\n"))
      code.name.split.each {|t| index_term(t)}
    end
  end

  def self.index_term(term)
    1.upto(term.length - 1) do |n|
      prefix = term[0, n]
      $redis.zincrby("code-autocomplete:#{prefix.downcase}", 1, term.downcase)
    end
  end
end
