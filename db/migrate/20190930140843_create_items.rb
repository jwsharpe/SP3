class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :brand
      t.string :type
      t.integer :price_in_cents
      t.string :description

      t.timestamps
    end
  end
end
