namespace :course_autocompletes do
  desc "Generate course search item"
  task :index => :environment do
    CourseAutocomplete.index_courses
  end
end
