# encoding: utf-8
class Dax
  module Silo

    def self.included(base)
      base.extend(ClassMethods)
    end

    module ClassMethods

      def mount(name, location)
        result = new(:name => name, :location => location)
        result.save!
        result
      end

      def silo(name)
        find_by_name(name)
      end

    end
  end
end
