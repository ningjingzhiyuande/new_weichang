class CreateHouses < ActiveRecord::Migration
  def change
    create_table :houses do |t|
      t.integer :user_id
      t.string :address
      t.decimal :area, :precision => 8, :scale => 2
      t.decimal :price, :precision => 8, :scale => 2
      t.string :info
      t.string :mobile
      t.integer :status
      t.integer :kind
      t.timestamps null: false
    end
    add_index :houses,:user_id
    add_index :houses,:status
    add_index :houses,:kind
  end
end
