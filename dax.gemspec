# encoding: utf-8
$:.push File.expand_path('../lib', __FILE__)
require 'dax/version'

Gem::Specification.new do |s|
  s.name        =  "dax"
  s.version     =   Dax::VERSION
  s.authors     = ["Kendall Gifford"]
  s.email       = ["zettabyte@gmail.com"]
  s.homepage    = "https://github.com/zettabyte/dax"
  s.summary     = "Data access abstraction (dax) gem for file access."
  s.description = <<-DESC.gsub(/^\s*/, '')
    Data access abstraction (dax) gem for file access.

    This gem provides access to one or more collections of files, called file
    silos, through a consistent API. The file silos may abstract access to files
    stored in cloud services, on remote servers, in a version control system, or
    just stored locally.
  DESC

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- features/*`.split("\n")
  s.require_paths = %w{ lib }

  s.add_development_dependency "bundler",  "~> 1.1.3"
  s.add_development_dependency "rake",     "~> 0.9.2"
  s.add_development_dependency "cucumber", "~> 1.1.9"
end
