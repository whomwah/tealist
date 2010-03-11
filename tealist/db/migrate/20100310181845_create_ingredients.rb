class CreateIngredients < ActiveRecord::Migration
  def self.up
    create_table :ingredients do |t|
      t.integer :amount, :default => 0
      t.integer :substance_id
      t.integer :cuppa_id
      t.timestamps
    end

    add_index :ingredients, :substance_id
    add_index :ingredients, :cuppa_id
  end

  def self.down
    drop_table :ingredients
  end
end
