$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "tablesorter/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "tablesorter"
  s.version     = Tablesorter::VERSION
  s.authors     = 'Luke Roberts'
  s.email       = "luke@llamadigital.net"
  s.homepage    = "github.com/lukeroberts1990/tablesorter"
  s.summary     = "A gem for creating sortable tables in rails applications" 
  s.description = "TODO: Description of Tablesorter."
  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]
  s.add_dependency "rails", "~> 3.1"
end
