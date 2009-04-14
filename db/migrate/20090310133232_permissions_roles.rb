class PermissionsRoles < ActiveRecord::Migration
  def self.up
    create_table(:permissions_roles, :id => false) do |t|
       t.column :permission_id, :integer, :null=>false
       t.column :role_id, :integer, :null=>false
  end

  def self.down
    drop_table :permissions_roles
  end
  end
end
