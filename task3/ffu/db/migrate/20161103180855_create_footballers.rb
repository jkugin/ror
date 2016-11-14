class CreateFootballers < ActiveRecord::Migration
	def change
		create_table :Footballers do |t|
			t.string :name
			t.string :age
			t.string :club
		
			t.timestamps null: false
		end
	end
end
