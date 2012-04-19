# encoding: utf-8

Given /^a ruby application with ActiveRecord models$/ do
  active_record_test_app # trigger loading test app...
end

When /^I configure dax to use an ActiveRecord class named "([^"]*)" for (silo|file)s$/ do |name, model|
  klass = active_record_test_app.nested_class(name)
  Dax.config { |config| config.send("#{model}_class=", klass) }
end

Then /^"([^"]*)" should appear to be a dax model class for (silo|file)s$/ do |name, model|
  klass = active_record_test_app.nested_class(name)
  model = Dax.const_get(model.capitalize)
  klass.should include(model)
end

Then /^dax should tell me that "([^"]*)" is the model class for (silo|file)s$/ do |name, model|
  klass = active_record_test_app.nested_class(name)
  Dax.send("#{model}_class").should == klass
end

