class CharacterController < Sinatra::Base

	set :views, "app/views/character"

	get '/characters' do
		@characters = Character.all
		erb :index
	end

	get '/characters/new' do
		erb :new
	end

	get '/characters/:id' do
		@character = Character.find(params[:id])
		erb :show
	end

	post '/characters' do
		character = params["movie"]["character"]

		@character = Character.create(name: character["name"],
																	actor_name: character["actor_name"],
																	movie_id: character["movie_id"])
		redirect to '/characters'
	end

	get '/characters/:id/edit' do
		@character = Character.find(params[:id])
		erb :edit
	end

	patch '/characters/:id' do
		character = params["movie"]["character"]
		@character = Character.find(params[:id])
		@character.update(name: character["name"],
											actor_name: character["actor_name"])
		redirect to "/characters/#{@character.id}"
	end

	delete '/characters/:id' do
		@character = Character.find(params[:id])
		@character.destroy
		redirect to "/characters"
	end

end
