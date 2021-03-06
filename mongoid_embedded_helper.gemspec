# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{mongoid_embedded_helper}
  s.version = "0.3.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Kristian Mandrup"]
  s.date = %q{2011-01-10}
  s.description = %q{Facilitates performing queries on collections in embedded Mongoid documents by performing query from the root node}
  s.email = %q{kmandrup@gmail.com}
  s.extra_rdoc_files = [
    "README.markdown"
  ]
  s.files = [
    "Gemfile",
    "MITLICENSE",
    "README.markdown",
    "Rakefile",
    "VERSION",
    "autotest/discover.rb",
    "lib/mongoid/embedded_helper.rb",
    "lib/mongoid_embedded_helper.rb",
    "mongoid_embedded_helper.gemspec",
    "rspec.options",
    "spec/model/list.rb",
    "spec/model/person_list.rb",
    "spec/mongoid/embedded_helper_spec.rb",
    "spec/mongoid/more_embedded_helper_spec.rb",
    "spec/spec_helper.rb"
  ]
  s.homepage = %q{http://github.com/kristianmandrup/mongoid_embedded_helper}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Facilitates performing queries on collections in embedded Mongoid documents}
  s.test_files = [
    "spec/model/list.rb",
    "spec/model/person_list.rb",
    "spec/mongoid/embedded_helper_spec.rb",
    "spec/mongoid/more_embedded_helper_spec.rb",
    "spec/spec_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<mongoid>, [">= 2.0.0.beta.14"])
      s.add_runtime_dependency(%q<mongoid_adjust>, [">= 0.1.1"])
      s.add_runtime_dependency(%q<bson_ext>, [">= 1.0.1"])
      s.add_runtime_dependency(%q<mongoid>, [">= 2.0.0.beta.18"])
      s.add_runtime_dependency(%q<mongoid_adjust>, [">= 0.1.1"])
      s.add_runtime_dependency(%q<bson_ext>, [">= 1.0.8"])
      s.add_development_dependency(%q<rspec>, [">= 2.0.1"])
    else
      s.add_dependency(%q<mongoid>, [">= 2.0.0.beta.14"])
      s.add_dependency(%q<mongoid_adjust>, [">= 0.1.1"])
      s.add_dependency(%q<bson_ext>, [">= 1.0.1"])
      s.add_dependency(%q<mongoid>, [">= 2.0.0.beta.18"])
      s.add_dependency(%q<mongoid_adjust>, [">= 0.1.1"])
      s.add_dependency(%q<bson_ext>, [">= 1.0.8"])
      s.add_dependency(%q<rspec>, [">= 2.0.1"])
    end
  else
    s.add_dependency(%q<mongoid>, [">= 2.0.0.beta.14"])
    s.add_dependency(%q<mongoid_adjust>, [">= 0.1.1"])
    s.add_dependency(%q<bson_ext>, [">= 1.0.1"])
    s.add_dependency(%q<mongoid>, [">= 2.0.0.beta.18"])
    s.add_dependency(%q<mongoid_adjust>, [">= 0.1.1"])
    s.add_dependency(%q<bson_ext>, [">= 1.0.8"])
    s.add_dependency(%q<rspec>, [">= 2.0.1"])
  end
end

