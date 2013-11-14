require File.expand_path('../boot', __FILE__)

require 'rails/all'

Bundler.require(:default, Rails.env)

module Argh
  class Application < Rails::Application
    config.assets.paths << "#{Rails}/vendor/assets/fonts"
  end
end
