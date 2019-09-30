class AddTrucksToItems < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :truck_size_in_mm, :integer
    add_column :items, :truck_standard_kingpin?, :boolean
    add_column :items, :truck_axel_degree, :integer
    add_column :items, :color, :string
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
