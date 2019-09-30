class AddBearingsToItems < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :bearings_open?, :boolean
    add_column :items, :bearings_abec?, :boolean
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
