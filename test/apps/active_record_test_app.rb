# encoding: utf-8
require 'active_record'
require_relative 'base'

class ActiveRecordTestApp < TestAppsBase

  autoloads :Migration, :DaxSilo, :DaxFile

  def initialize
    migrate!
  end

  def database
    @database ||= File.join(directory, 'test.db').freeze
  end

  def settings
    @settings ||= { :adapter => 'sqlite3', :database => database }
  end

  private

  def migrate!
    drop_database!
    connect!
    ActiveRecord::Migration.verbose = false
    Migration.migrate(:up)
  end

  def drop_database!
    File.delete(database) if File.exists?(database)
  end

  def connect!
    ActiveRecord::Base.establish_connection(settings)
  end

end
