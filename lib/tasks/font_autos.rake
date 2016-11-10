namespace :font_autocompletes do
  desc "Generate code search item"
  task :index => :environment do
    FontAutocomplete.index_fonts
  end
end
