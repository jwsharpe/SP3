class AddDecksToItems < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :deck_length, :integer
    add_column :items, :deck_width, :integer
    add_column :items, :deck_material, :integer
    add_column :items, :deck_mounting_type, :string
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
