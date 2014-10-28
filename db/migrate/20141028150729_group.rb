class Group < ActiveRecord::Migration
  def change
	create_table :groups do |t|
		t.string :type
	end

	create_table :group_memberships do |t|
		t.string :member_type
		t.integer :member_id
		t.integer :group_id
		t.string :group_name
		t.string :membership_type
	end

	add_index :group_memberships, [:member_id, :member_type]
	add_index :group_memberships, :group_id
	add_index :group_memberships, :group_name
  end
end
