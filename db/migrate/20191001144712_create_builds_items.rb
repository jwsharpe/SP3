class CreateBuildsItems < ActiveRecord::Migration[6.0]
  def change
    create_table :builds_items do |t|

      t.timestamps
    end
  end
end
