# encoding: utf-8
require 'spec_helper'

class Dax
  describe Silo do
    describe ".mount" do
      it "creates a Dax::Silo instance and saves it with the provided name and options, returning it" do
        silo = Silo.mount("test", "test")
        silo.should == Silo.find("test")
      end
    end

    describe ".find" do
      it "loads and returns the Dax::Silo instance with the provided name, if any, returning nil otherwise"
    end
  end
end
