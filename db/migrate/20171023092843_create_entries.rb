class CreateEntries < ActiveRecord::Migration[5.1]
  def change
    create_table :entries do |t|
      t.string :name
      t.text :address
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
