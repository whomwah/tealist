class CreateUrlKeys < ActiveRecord::Migration
  def self.up
    create_table :url_keys do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :url_keys
  end
end
