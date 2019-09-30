class CreateCartsItems < ActiveRecord::Migration[6.0]
  def change
    create_table :carts_items do |t|
      t.integer :cart_id
      t.integer :item_id

      t.timestamps
    end
  end
end
