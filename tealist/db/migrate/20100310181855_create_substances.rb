class CreateSubstances < ActiveRecord::Migration
  def self.up
    create_table :substances do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :substances
  end
end
