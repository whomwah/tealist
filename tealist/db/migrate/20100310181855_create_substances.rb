class CreateSubstances < ActiveRecord::Migration
  def self.up
    create_table :substances do |t|
      t.string :title
      t.string :description
      t.string :logo_url
      t.string :unit
      t.timestamps
    end
  end

  def self.down
    drop_table :substances
  end
end
