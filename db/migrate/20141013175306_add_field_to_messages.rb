class AddFieldToMessages < ActiveRecord::Migration
  def change
  	add_column :messages, :body, :text
  	add_column :messages, :subject, :text
  end
end
