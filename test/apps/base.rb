# encoding: utf-8
require 'active_support/core_ext/string/inflections'

class TestAppsBase
  BASE = File.expand_path('..', __FILE__).freeze

  class << self

    def setup
      @instance ||= new
    end

    def app_name
      @app_name ||= name.underscore.freeze
    end

    def app_directory
      @app_directory ||= File.join(BASE, app_name).freeze
    end

    def autoloads(*class_names)
      class_names.each do |name|
        autoload name, File.join(app_directory, name.to_s.underscore)
      end
    end

    def nested_class(name)
      const_get(name)
    end
  end

  def name
    @name ||= self.class.app_name
  end

  def directory
    @directory ||= self.class.app_directory
  end

  def nested_class(name)
    self.class.nested_class(name)
  end
end
