class AddPublicToBuilds < ActiveRecord::Migration[6.0]
  def change
    add_column :builds, :public, :boolean, :default => false
  end
end
