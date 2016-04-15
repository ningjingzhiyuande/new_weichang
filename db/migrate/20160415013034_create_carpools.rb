class CreateCarpools < ActiveRecord::Migration
  def change
    create_table :carpools do |t|
      t.integer :user_id
      t.string :mobile
      t.datetime :by_at
      t.integer :by_kind
      t.string :info
      

      t.timestamps null: false
    end
  end
end
