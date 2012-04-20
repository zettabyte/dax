# encoding: utf-8

Given /^dax is configured with ActiveRecord models$/ do
  Dax.config do |config|
    config.silo_class = active_record_test_app.nested_class(:DaxSilo)
    config.file_class = active_record_test_app.nested_class(:DaxFile)
  end
end

Given /^a local directory named "([^"]*)"$/ do |name|
  prepare_local_directory(name)
end

When /^I mount the local directory using a silo, naming it "([^"]*)"$/ do |name|
  Dax.mount(name, local_directory)
end

Then /^I can access a silo named "([^"]*)"$/ do |name|
  @silo = Dax[name]
  @silo.should be
end

Then /^it refers to the local directory$/ do
  @silo.location.should == local_directory
end

