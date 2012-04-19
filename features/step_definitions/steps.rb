# encoding: utf-8
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

