class AddFieldToProduct < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :price, :float
    add_column :products, :title, :string
  end
end
