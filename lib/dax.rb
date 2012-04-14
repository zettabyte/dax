# encoding: utf-8
require 'dax/silo'

module Dax
  def mount(name, location)
    Silo.mount(name, location)
  end
  module_function :mount

  def silo(name)
    Silo.find(name)
  end
  module_function :silo
end
