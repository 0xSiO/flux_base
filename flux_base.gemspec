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

  spec.add_dependency 'rails', '~> 5.2.2'

  spec.add_development_dependency 'pg'
  spec.add_development_dependency 'rubocop'
end
