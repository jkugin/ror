class CreateBugs < ActiveRecord::Migration
  def change
    create_table :bugs do |t|
      t.string :name
      t.integer :size

      t.timestamps null: false
    end
  end
end
