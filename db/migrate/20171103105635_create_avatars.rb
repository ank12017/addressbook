class CreateAvatars < ActiveRecord::Migration[5.1]
  def change
    create_table :avatars do |t|
      t.string :avatar
      t.string :avatarable_type 
      t.integer :avatarable_id
      t.timestamps
    end
  end
end
