class CreateTeaStrengths < ActiveRecord::Migration
  def self.up
    create_table :tea_strengths do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :tea_strengths
  end
end
