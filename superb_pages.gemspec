$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'superb_pages/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'superb_pages'
  s.version     = SuperbPages::VERSION
  s.authors     = ['Alexander Borovykh']
  s.email       = ['immaculate.pine@gmail.com']
  s.homepage    = ''
  s.summary     = 'SuperbPages adds the static pages to your project.'
  s.description = 'SuperbPages adds the static pages to your project.'
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.rdoc']
  s.test_files = Dir['test/**/*']

  s.add_dependency 'rails', '>= 4.0.0'

  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'rspec-rails'
end
