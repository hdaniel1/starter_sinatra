class CreateCharacter < ActiveRecord::Migration[4.2]

	def change 
		create_table :characters do |t|
			t.integer :movie_id
			t.integer :actor_id
			t.string :name
		end 
	end

end	