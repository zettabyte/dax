# encoding: utf-8
require 'dax'

class SiloStub
  def initialize(params)
    @name, @location = params[:name], params[:location]
  end

  attr_reader :name, :location

  def save!
  end

  def self.find_by_name(name)
    new(:name => name)
  end
end
