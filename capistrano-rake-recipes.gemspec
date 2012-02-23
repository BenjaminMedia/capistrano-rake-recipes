# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "capistrano-rake-recipes/version"

Gem::Specification.new do |s|
  s.name        = "capistrano-rake-recipes"
  s.version     = Capistrano::Rake::Recipes::VERSION
  s.authors     = ["Emil Kampp"]
  s.email       = ["emil@kampp.me"]
  s.homepage    = "emil.kampp.me"
  s.summary     = %q{This allows to run rake tasks on the remote servers}
  s.description = %q{This allows to run rake tasks on the remote servers}

  s.rubyforge_project = "capistrano-rake-recipes"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency "git"
  s.add_runtime_dependency "git"
end
