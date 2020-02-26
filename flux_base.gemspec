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
  spec.summary     = 'A mountable engine providing sensible default gems and helpers for new Rails applications.'
  spec.license     = 'MIT'

  spec.files = Dir['{app,config,db,lib}/**/*', 'LICENSE', 'Rakefile', 'README.md']

  spec.add_dependency 'awesome_print', '~> 1.8.0'
  spec.add_dependency 'bootsnap', '~> 1.4.6'
  spec.add_dependency 'byebug', '~> 11.1.1'
  spec.add_dependency 'capybara', '~> 3.31.0'
  spec.add_dependency 'jbuilder', '~> 2.10.0'
  spec.add_dependency 'listen', '~> 3.2.1'
  spec.add_dependency 'puma', '~> 4.3.1'
  spec.add_dependency 'rails', '~> 6.0.1'
  spec.add_dependency 'rails_semantic_logger', '~> 4.4.3'
  spec.add_dependency 'sass-rails', '~> 6.0.0'
  spec.add_dependency 'slim-rails', '~> 3.2.0'
  spec.add_dependency 'spring', '~> 2.1.0'
  spec.add_dependency 'spring-watcher-listen', '~> 2.0.1'
  spec.add_dependency 'turbolinks', '~> 5.2.1'
  spec.add_dependency 'web-console', '~> 4.0.1'
  spec.add_dependency 'webpacker', '~> 4.2.2'
  spec.add_dependency 'whenever', '~> 1.0.0'

  spec.add_development_dependency 'pg', '~> 1.2.2'
  spec.add_development_dependency 'rubocop', '~> 0.80'
end
