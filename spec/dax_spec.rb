# encoding: utf-8
require 'spec_helper'

describe Dax do
  describe ".config" do
    it "accepts a block which it calls, passing a 'config' object" do
      Dax.config { |c| c.should be }
    end

    it "gives the block a 'config' object that has a #silo_class attribute accessor" do
      Dax.config { |c| c.should respond_to(:silo_class, :silo_class=) }
    end

    it "give the block a 'config' object that has a #file_class attribute accessor" do
      Dax.config { |c| c.should respond_to(:file_class, :file_class=) }
    end
  end

  describe ".silo_class attribute" do
    it "has a reader and a writer" do
      Dax.should respond_to(:silo_class, :silo_class=)
    end

    it "includes the Dax::Silo module into the object provided to the writer" do
      Dax.silo_class = Class.new
      Dax.silo_class.should include(Dax::Silo)
    end
  end

  describe ".file_class attribute" do
    it "has a reader and a writer" do
      Dax.should respond_to(:file_class, :file_class=)
    end

    it "includes the Dax::File module into the object provided to the writer" do
      Dax.file_class = Class.new
      Dax.file_class.should include(Dax::File)
    end
  end

  describe ".mount" do
    it "creates a silo instance and saves it with the provided name and location, returning it" do
      name, location = 'name', 'location'
      Dax.silo_class = SiloStub
      SiloStub.any_instance.should_receive(:save!)
      silo = Dax.mount(name, location)
      silo.should be_an_instance_of(SiloStub)
      silo.name.should == name
      silo.location.should == location
    end
  end

  describe ".[]" do
    it "searches for and returns the named silo" do
      name = 'test'
      Dax.silo_class = SiloStub
      Dax.mount(name, 'location')
      silo = Dax[name]
      silo.should be_an_instance_of(SiloStub)
      silo.name.should == name
    end
  end
end
