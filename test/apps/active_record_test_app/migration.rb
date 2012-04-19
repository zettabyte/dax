# encoding: utf-8
require 'active_record'

class ActiveRecordTestApp
  class Migration < ActiveRecord::Migration
    def change

      create_table(:dax_silos) do |t|
        t.string :name
        t.text :location
        t.timestamps
      end

      create_table(:dax_files) do |t|
        t.references :dax_silo
        t.string :name
        t.timestamps
      end

    end
  end
end
