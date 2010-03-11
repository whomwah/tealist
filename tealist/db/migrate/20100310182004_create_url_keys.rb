class CreateUrlKeys < ActiveRecord::Migration
  def self.up
    create_table :url_keys, :id => false do |t|
      t.integer :count, :null => false
    end
  end

  def self.down
    drop_table :url_keys
  end
end
