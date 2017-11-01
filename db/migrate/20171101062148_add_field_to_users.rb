class AddFieldToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :subject, :string
    add_column :users, :message, :string
  end
end
