$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "api/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "api"
  s.version     = Api::VERSION
  s.authors     = ["Alan Norton"]
  s.email       = ["git@nonration.al"]
  s.homepage    = "http://unibus.io"
  s.summary     = "JSON API Endpoints"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.2", ">= 5.2.4.2"

  s.add_development_dependency "pg"
  s.add_development_dependency "pry-rails"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency 'rspec_junit_formatter', '~> 0.2.2'
end
