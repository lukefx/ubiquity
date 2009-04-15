class AddSelfReferenceToGroups < ActiveRecord::Migration
  def self.up
    add_column :groups, :group_id, :integer
  end

  def self.down
    remove_column :groups, :group_id
  end
end
