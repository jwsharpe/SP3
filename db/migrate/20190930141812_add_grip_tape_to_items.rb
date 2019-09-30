class AddGripTapeToItems < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :griptape_length, :integer
    add_column :items, :griptape_width, :integer
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
