class CourseAutocomplete < ApplicationRecord
  attr_accessor :term, :popularity

  def self.terms_for(prefix)
    $redis.zrevrange("course-autocomplete:#{prefix.downcase}", 0, 9)  
  end

  def self.index_courses
    Course.find_each do |course|
      index_term(course.name)
      index_term(course.category.name)
      # index_term(theme.tags.map(&:name).join("\n"))
      course.name.split.each {|t| index_term(t)}
    end
  end

  def self.index_term(term)
    1.upto(term.length - 1) do |n|
      prefix = term[0, n]
      $redis.zincrby("course-autocomplete:#{prefix.downcase}", 1, term.downcase)
    end
  end
end
