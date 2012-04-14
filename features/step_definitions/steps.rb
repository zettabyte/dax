# encoding: utf-8
Given /^a local directory named "([^"]*)"$/ do |name|
  prepare_local_directory(name)
end

When /^I mount the local directory using a direct, file\-system silo, naming it "([^"]*)"$/ do |name|
  Dax.mount(name, local_directory)
end

Then /^I can access a direct, file\-system silo named "([^"]*)"$/ do |name|
  Dax.silo(name).name.should == name
end
