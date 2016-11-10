namespace :graphic_autocompletes do
  desc "Generate graphic search item"
  task :index => :environment do
    GraphicAutocomplete.index_graphics
  end
end
