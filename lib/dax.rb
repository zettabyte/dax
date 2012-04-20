# encoding: utf-8
require 'dax/silo'
require 'dax/file'

class Dax
  class << self

    def config
      yield(self)
    end

    attr_reader :silo_class
    attr_reader :file_class

    def silo_class=(klass)
      @silo_class = klass
      klass.instance_exec { include Dax::Silo }
    end

    def file_class=(klass)
      @file_class = klass
      klass.instance_exec { include Dax::File }
    end

    def mount(name, location)
      @silo_class.mount(name, location)
    end

    def [](name)
      @silo_class.silo(name)
    end
  end
end
