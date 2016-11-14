class CreateCups < ActiveRecord::Migration
  def change
    create_table :cups do |t|
      t.string :material
      t.integer :price

      t.timestamps null: false
    end
  end
end
