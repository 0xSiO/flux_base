require 'jbuilder'
require 'rails_semantic_logger'
require 'slim-rails'
require 'turbolinks'

if Rails.env == 'development' || Rails.env == 'test'
  require 'byebug'
  require 'database_cleaner'

  if Rails.env == 'development'
    require 'spring/watcher/listen'
    require 'web_console'
  end

  if Rails.env == 'test'
    require 'capybara/rails'
  end
end

module FluxBase
  class Engine < ::Rails::Engine
    isolate_namespace FluxBase
  end
end
