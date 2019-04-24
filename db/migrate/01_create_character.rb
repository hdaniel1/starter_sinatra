class CreateCharacter < ActiveRecord::Migration[4.2]

	def change 
		create_table :characters do |t|
			t.string :name
			t.string :actor_name
			t.integer :movie_id
		end 
	end

end	