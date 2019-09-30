class AddWheelsToItems < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :wheel_durometer, :integer
    add_column :items, :wheel_size_in_mm, :integer
    add_column :items, :wheel_center_cut?, :boolean
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
