class CreateTanks < ActiveRecord::Migration
  def change
    create_table :tanks do |t|
      t.string :tankname
      t.integer :gun

      t.timestamps null: false
    end
  end
end
