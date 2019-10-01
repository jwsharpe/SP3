class AddItemsToBuildsItems < ActiveRecord::Migration[6.0]
  def change
    add_column :builds_items, :build_id, :integer
    add_column :builds_items, :item_id, :integer
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
