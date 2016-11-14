class CreateBlades < ActiveRecord::Migration
	def change
		create_table :Blades do |t|
			t.string :name
			t.string :speed
			t.string :number_of_layers
		
			t.timestamps null: false
		end
	end
end
