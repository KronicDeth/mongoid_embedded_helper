require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "mongoid_embedded_helper"
    gem.summary = %Q{Facilitates performing queries on collections in embedded Mongoid documents}
    gem.description = %Q{Facilitates performing queries on collections in embedded Mongoid documents by performing query from the root node}
    gem.email = "kmandrup@gmail.com"
    gem.homepage = "http://github.com/kristianmandrup/mongoid_embedded_helper"
    gem.authors = ["Kristian Mandrup"]
    gem.add_dependency "mongoid",         ">= 2.0.0.beta.18"
    gem.add_dependency "mongoid_adjust",  ">= 0.1.1"
    gem.add_dependency "bson_ext",        ">= 1.0.8"

    gem.add_development_dependency "rspec", ">=2.0.1"
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end
# 
# require 'rake/testtask'
# Rake::TestTask.new(:test) do |test|
#   test.libs << 'lib' << 'test'
#   test.pattern = 'test/**/test_*.rb'
#   test.verbose = true
# end
# 
# begin
#   require 'rcov/rcovtask'
#   Rcov::RcovTask.new do |test|
#     test.libs << 'test'
#     test.pattern = 'test/**/test_*.rb'
#     test.verbose = true
#   end
# rescue LoadError
#   task :rcov do
#     abort "RCov is not available. In order to run rcov, you must: sudo gem install spicycode-rcov"
#   end
# end
# 
# task :test => :check_dependencies
# 
# task :default => :test
# 
# require 'rake/rdoctask'
# Rake::RDocTask.new do |rdoc|
#   version = File.exist?('VERSION') ? File.read('VERSION') : ""
# 
#   rdoc.rdoc_dir = 'rdoc'
#   rdoc.title = "mongoid_acts_as_tree #{version}"
#   rdoc.rdoc_files.include('README*')
#   rdoc.rdoc_files.include('lib/**/*.rb')
# end
# 
