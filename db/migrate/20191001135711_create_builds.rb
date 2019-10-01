class CreateBuilds < ActiveRecord::Migration[6.0]
  def change
    create_table :builds do |t|
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
