# encoding: utf-8
class Dax
  module Silo

    def self.mount(name, location)
      result = new(name, location)
      result.save!
      result
    end

    def self.find(name)
    end

  end
end
