namespace :code_autocompletes do
  desc "Generate code search item"
  task :index => :environment do
    CodeAutocomplete.index_codes
  end
end
