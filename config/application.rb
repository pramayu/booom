require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Khapoo
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    config.middleware.insert_before(0, "ThemeAutocompletes")
    config.middleware.insert_before(0, "CodeAutocompletes")
    config.middleware.insert_before(0, "GraphicAutocompletes")
    config.middleware.insert_before(0, "T3dAutocompletes")
    config.middleware.insert_before(0, "VideofxAutocompletes")
    config.middleware.insert_before(0, "CourseAutocompletes")
  end
end
