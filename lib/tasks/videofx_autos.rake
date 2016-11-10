namespace :videofx_autocompletes do
  desc "Generate videofx search item"
  task :index => :environment do
    VideofxAutocomplete.index_videofxes
  end
end
