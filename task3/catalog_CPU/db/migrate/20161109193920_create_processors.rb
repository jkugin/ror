class CreateProcessors < ActiveRecord::Migration
  def change
    create_table :processors do |t|
      t.string :name
      t.integer :friquency
      t.boolean :gpu

      t.timestamps null: false
    end
  end
end
