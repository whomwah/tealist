class CreateTeaStrengths < ActiveRecord::Migration
  def self.up
    create_table :tea_strengths do |t|
      t.string :title
      t.string :description
      t.integer :position
      t.string :color
      t.timestamps
    end
  end

  def self.down
    drop_table :tea_strengths
  end
end
