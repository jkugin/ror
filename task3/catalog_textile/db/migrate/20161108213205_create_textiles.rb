class CreateTextiles < ActiveRecord::Migration
  def change
    create_table :textiles do |t|
      t.string :color
      t.string :material
      t.integer :price

      t.timestamps null: false
    end
  end
end
