namespace :t3d_autocompletes do
  desc "Generate t3d search item"
  task :index => :environment do
    T3dAutocomplete.index_t3ds
  end
end
