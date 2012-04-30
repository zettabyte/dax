# encoding: utf-8
require 'rubygems'
require 'bundler/setup'
require 'bundler/gem_tasks'

# Run RSpec tests: rake spec
require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec)
task :rspec => :spec # alias

# Run Cucumber features: rake features
require 'cucumber'
require 'cucumber/rake/task'
Cucumber::Rake::Task.new(:features)
task :cucumber => :features # alias

# Run RSpec tests AND Cucumber features: rake test (default task)
desc "Run all tests (RSpec tests and Cucumber features)"
task :test => [:spec, :features]
task :default => :test
