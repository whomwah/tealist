class CreateMemberships < ActiveRecord::Migration
  def self.up
    create_table :memberships do |t|
      t.integer :list_id
      t.integer :user_id
      t.integer :position
      t.timestamps
    end

    add_index :memberships, :list_id
    add_index :memberships, :user_id
  end

  def self.down
    drop_table :memberships
  end
end
