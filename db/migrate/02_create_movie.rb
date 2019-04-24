class CreateMovie < ActiveRecord::Migration[4.2]

	def change 
		create_table :movies do |t|
			t.string :title
			t.string :description
			t.string :genre
			t.string :release_date
			t.integer :run_time
		end 
	end

end