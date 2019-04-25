class ActorController < Sinatra::Base

	set :views, "app/views/actor"

	get '/actors' do
		@actors = Actor.all
		erb :index
	end

	get '/actors/new' do
		erb :new
	end

	get '/actors/:id' do
		@actor = Actor.find(params[:id])
		erb :show
	end

	post '/actors' do
		@actor = Actor.find_or_create_by(params["actor"])
		binding.pry
		if params["movies"] != nil
			params["movies"].each do |movie|
				Character.find_or_create_by(actor_id: @actor.id, movie_id: movie)
			end
		end

		if !params["movie"]["title"] = ""
			@movie = Movie.find_or_create_by(params["movie"])
			Character.find_or_create_by(actor_id: @actor.id, movie_id: @movie.id)
		end

		redirect to '/actors'
	end

	get '/actors/:id/edit' do
		@actor = Actor.find(params[:id])
		erb :edit
	end

	patch '/actors/:id' do
		actor = params["movie"]["actor"]
		@actor = Actor.find(params[:id])
		@actor.update(name: actor["name"],
											actor_name: actor["actor_name"])
		redirect to "/actors/#{@actor.id}"
	end

	delete '/actors/:id' do
		@actor = Actor.find(params[:id])
		@actor.destroy
		redirect to "/actors"
	end

end
