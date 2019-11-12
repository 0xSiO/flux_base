# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('lib', __dir__)

# Maintain your gem's version:
require 'flux_base/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = 'flux_base'
  spec.version     = FluxBase::VERSION
  spec.authors     = ['Luc Street']
  spec.email       = ['lucis-fluxum@users.noreply.github.com']
  spec.homepage    = 'https://github.com/lucis-fluxum/flux_base'
  spec.summary     = 'Summary of FluxBase.'
  spec.description = 'Description of FluxBase.'
  spec.license     = 'MIT'

  spec.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']

  spec.add_dependency 'awesome_print'
  spec.add_dependency 'bootsnap'
  spec.add_dependency 'byebug'
  spec.add_dependency 'capybara'
  spec.add_dependency 'database_cleaner'
  spec.add_dependency 'jbuilder'
  spec.add_dependency 'listen'
  spec.add_dependency 'puma'
  spec.add_dependency 'rails', '~> 6.0.1'
  spec.add_dependency 'rails_semantic_logger'
  spec.add_dependency 'redis'
  spec.add_dependency 'sass-rails'
  spec.add_dependency 'slim-rails'
  spec.add_dependency 'spring'
  spec.add_dependency 'spring-watcher-listen'
  spec.add_dependency 'turbolinks'
  spec.add_dependency 'web-console'
  spec.add_dependency 'webpacker'
  spec.add_dependency 'whenever'

  spec.add_development_dependency 'pg'
  spec.add_development_dependency 'rubocop'
end
