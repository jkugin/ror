class CreateProstitutes < ActiveRecord::Migration
  def change
    create_table :prostitutes do |t|
      t.string :name
      t.integer :age
      t.integer :price

      t.timestamps null: false
    end
  end
end
