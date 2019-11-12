# frozen_string_literal: true

require 'jbuilder'
require 'rails_semantic_logger'
require 'slim-rails'
require 'turbolinks'
require 'webpacker'

if Rails.env == 'development' || Rails.env == 'test'
  require 'byebug'

  if Rails.env == 'development'
    require 'spring/watcher/listen'
    require 'web_console'
  end
end

module FluxBase
  class Engine < ::Rails::Engine
    isolate_namespace FluxBase
  end
end
