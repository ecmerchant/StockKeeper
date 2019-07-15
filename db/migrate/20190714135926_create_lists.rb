class CreateLists < ActiveRecord::Migration[5.2]
  def change
    create_table :lists do |t|
      t.string :user_id
      t.string :product_id
      t.string :sku
      t.string :shop_id
      t.decimal :price, precision: 10, scale: 2
      t.integer :qty, null: 0, default: 0

      t.timestamps
    end

    add_index :lists, [:user_id, :sku, :shop_id], unique: true, name: 'upsert_lists'

  end
end
