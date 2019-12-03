$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "core/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "core"
  s.version     = Core::VERSION
  s.authors     = ["Alan Norton"]
  s.email       = ["alan@mealpal.com"]
  s.homepage    = "https://unibus.io"
  s.summary     = "ActiveRecords, core business logic"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "rails", "~> 5.0.0", ">= 5.0.0.1"
  s.add_dependency 'devise', '~> 4.7.1'
  s.add_dependency 'nokogiri', '>= 1.8.1', '< 1.11.0'
  s.add_dependency 'loofah', '>= 2.2.1', '< 2.5.0'

  s.add_development_dependency "pg"
  s.add_development_dependency "pry-rails"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency 'rspec_junit_formatter', '~> 0.2.2'
end
