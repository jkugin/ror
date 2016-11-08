class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :partnumber
      t.string :name
      t.string :discount_cod

      t.timestamps null: false
    end
  end
end
