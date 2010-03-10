class CreateCuppas < ActiveRecord::Migration
  def self.up
    create_table :cuppas do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :cuppas
  end
end
