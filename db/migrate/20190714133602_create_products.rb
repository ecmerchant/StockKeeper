class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :shop_id
      t.string :product_id
      t.text :title
      t.string :url
      t.decimal :new_price, precision: 10, scale: 2
      t.decimal :used_price, precision: 10, scale: 2
      t.string :image_url
      t.boolean :availability, null: false, default: false
      t.boolean :validity, null: false, default: false
      t.integer :stock_qty, null: 0, default: 0

      t.timestamps
    end

    add_index :products, [:product_id, :shop_id], unique: true, name: 'upsert_products'

  end
end
