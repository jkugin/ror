class CreateBalls < ActiveRecord::Migration
  def change
    create_table :balls do |t|
      t.string :name
      t.string :material
      t.integer :stars

      t.timestamps null: false
    end
  end
end
