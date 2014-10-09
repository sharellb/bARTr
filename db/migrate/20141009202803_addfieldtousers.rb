class Addfieldtousers < ActiveRecord::Migration
  def change
  	add_column :users, :profile_name , :string
  	add_column :users, :first_name , :string
  	add_column :users, :last_name , :string
  	add_column :users, :about, :text
  end
end
