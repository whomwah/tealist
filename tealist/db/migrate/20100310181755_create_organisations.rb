class CreateOrganisations < ActiveRecord::Migration
  def self.up
    create_table :organisations do |t|
      t.string :url_key, :null => false
      t.string :title
      t.string :description
      t.string :logo_url
      t.string :homepage_url
      t.timestamps
    end

    add_index :organisations, :url_key
  end

  def self.down
    drop_table :organisations
  end
end
