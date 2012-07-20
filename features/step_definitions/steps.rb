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

Given /^a simple silo named "([^"]*)" has mounted a local directory named "([^"]*)"$/ do |name, location|
  Dax.mount(name, location)
end

Given /^a file named "([^"]*)", located in "([^"]*)" in silo "([^"]*)"$/ do |filename, location, silo|
  @silo = Dax[silo]
  @silo.add(location, filename)
end

When /^I read the entire contents of the file$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^I should have a data buffer containing the following text in unix format$/ do |string|
  pending # express the regexp above with the code you wish you had
end

