namespace :theme_autocompletes do
  desc "Generate theme search item"
  task :index => :environment do
    ThemeAutocomplete.index_themes
  end
end
