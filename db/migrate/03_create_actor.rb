class CreateActor < ActiveRecord::Migration[4.2]

	def change 
		create_table :actors do |t|
			t.string :name
			t.integer :net_worth
			t.integer :age
		end 
	end

end	