class AddFieldsToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :long_request, :text
  	add_column :users, :link, :string
  	add_column :users, :facebook, :string
  	add_column :users, :linkedin, :string
  	add_column :users, :github, :string
  	add_column :users, :website, :string
  	add_column :users, :dribble, :string
  	add_column :users, :soundcloud, :string
  end
end
