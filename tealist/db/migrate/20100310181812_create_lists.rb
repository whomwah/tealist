class CreateLists < ActiveRecord::Migration
  def self.up
    create_table :lists do |t|
      t.string :url_key, :null => false
      t.string :title
      t.string :description
      t.string :logo_url
      t.string :homepage_url
      t.integer :organisation_id
      t.timestamps
    end

    add_index :lists, :organisation_id
    add_index :lists, :url_key
  end

  def self.down
    drop_table :lists
  end
end
