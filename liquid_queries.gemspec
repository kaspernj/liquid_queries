$LOAD_PATH.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "liquid_queries/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "liquid_queries"
  s.version     = LiquidQueries::VERSION
  s.authors     = ["kaspernj"]
  s.email       = ["kaspernj@gmail.com"]
  s.homepage    = "https://www.github.com/kaspernj/liquid_queries"
  s.summary     = "ActiveRecord read queries in Liquid templates"
  s.description = "ActiveRecord read queries in Liquid templates"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", ">= 5.0.0"

  s.add_development_dependency "sqlite3"
end
