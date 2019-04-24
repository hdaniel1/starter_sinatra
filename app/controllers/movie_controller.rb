class MovieController < Sinatra::Base

	set :views, "app/views/movie"

	get '/movies' do 
		@movies = Movie.all
		erb :index
	end

	get '/movies/new' do 

		erb :new
	end

	get '/movies/:id' do 
		@movie = Movie.find(params[:id])

		erb :show
	end


	post '/movies' do 
		movie = params["movie"]
		@movie = Movie.create(title: movie["title"], 
							description: movie["description"], 
							genre: movie["genre"], 
							release_date: movie["release_date"], 
							run_time: movie["run_time"])
		redirect "/movies/#{@movie.id}"
	end

	get '/movies/:id/edit' do 
		@movie = Movie.find(params[:id])

		erb :edit
	end 

	patch '/movies/:id' do 
		movie = params["movie"]
		@movie = Movie.find(params[:id])
		@movie.update(title: movie["title"], 
					  description: movie["description"], 
					  genre: movie["genre"], 
					  release_date: movie["release_date"], 
					  run_time: movie["run_time"])

		redirect "/movies/#{@movie.id}"
	end

	delete '/movies/:id' do 
		@movie = Movie.find(params[:id])
		@movie.destroy

		redirect "/movies"
	end


end
