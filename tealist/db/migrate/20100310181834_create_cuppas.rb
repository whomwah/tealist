class CreateCuppas < ActiveRecord::Migration
  def self.up
    create_table :cuppas do |t|
      t.string :title
      t.string :description
      t.integer :user_id
      t.integer :list_id
      t.integer :tea_strength_id
      t.timestamps
    end

    add_index :cuppas, :user_id
    add_index :cuppas, :list_id
    add_index :cuppas, :tea_strength_id
  end

  def self.down
    drop_table :cuppas
  end
end
