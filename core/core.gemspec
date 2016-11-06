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

  s.add_dependency "rails", "~> 5.0.0", ">= 5.0.0.1"
  s.add_dependency 'devise', '~> 4.2.0'

  s.add_development_dependency "pg"
  s.add_development_dependency "rspec-rails"
end
