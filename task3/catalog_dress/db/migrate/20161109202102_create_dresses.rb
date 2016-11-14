class CreateDresses < ActiveRecord::Migration
  def change
    create_table :dresses do |t|
      t.string :name
      t.integer :size
      t.boolean :in_stock

      t.timestamps null: false
    end
  end
end
