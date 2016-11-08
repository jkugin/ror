class CreateCondoms < ActiveRecord::Migration
  def change
    create_table :condoms do |t|
      t.string :name
      t.integer :length
      t.integer :price

      t.timestamps null: false
    end
  end
end
