class CreateRubbers < ActiveRecord::Migration
  def change
    create_table :rubbers do |t|
      t.string :name
      t.string :color
      t.boolean :piples_in

      t.timestamps null: false
    end
  end
end
