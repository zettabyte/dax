# encoding: utf-8
require 'spec_helper'

class Dax
  describe Silo do
    describe ".mount" do
      it "creates a silo instance and saves it with the provided name and location, returning it" do
        name, location = 'test', 'location'
        SiloStub.send(:include, Dax::Silo)
        SiloStub.any_instance.should_receive(:save!)
        silo = SiloStub.mount(name, location)
        silo.should be_an_instance_of(SiloStub)
        silo.name.should == name
        silo.location.should == location
      end
    end

    describe ".silo" do
      it "searches for and returns the named silo instance" do
        name = 'name'
        SiloStub.send(:include, Dax::Silo)
        SiloStub.mount(name, 'location')
        silo = SiloStub.silo(name)
        silo.should be_an_instance_of(SiloStub)
        silo.name.should == name
      end
    end
  end
end
