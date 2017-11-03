class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.float :subtotal
      t.float :shipping
      t.float :total
      t.float :tax

      t.timestamps
    end
  end
end
