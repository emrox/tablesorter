$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "tablesorter/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "tablesorter"
  s.version     = Tablesorter::VERSION
  s.authors     = 'Luke Roberts'
  s.email       = "luke@llamadigital.net"
  s.homepage    = "http://github.com/lukeroberts1990/tablesorter"
  s.summary     = "A gem for creating sortable tables in rails applications" 
  s.description = "This gem provides helpers for building sortable column headings in a table with links. 
                   It also monkey patches (for better or for worse) ActiveRecord and provides a more 
                   succinct api for sorting based on the table column links. It is the intention to 
                   expand this API to provide default and secondary sorts. 
                   It's very basic but I have built this functionality enough times to warrant gemification
                   Features via pull requests welcome"
  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]
  s.add_dependency "rails", ">= 4.0"
end
