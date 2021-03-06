$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "demoplugin/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "demoplugin"
  s.version     = Demoplugin::VERSION
  s.authors     = ["daitranthanhhoa"]
  s.email       = ["daitb@vnitsulutions.com"]
  s.homepage    = "https://github.com/daitranthanhhoa/demoplugin"
  s.summary     = "Summary of Demoplugin."
  s.description = "Description of Demoplugin."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.1.6"

  s.add_development_dependency "sqlite3"
end
