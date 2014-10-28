class DropTables < ActiveRecord::Migration
  def change
  	drop_table :conversations
  	drop_table :messages
  	drop_table :user_conversations
  end
end
