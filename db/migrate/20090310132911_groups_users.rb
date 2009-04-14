class GroupsUsers < ActiveRecord::Migration
  def self.up
    create_table(:groups_users, :id => false) do |t|
       t.column :group_id, :integer, :null=>false
       t.column :user_id, :integer, :null=>false
  end

  def self.down
    drop_table :groups_users
  end
  end
end
