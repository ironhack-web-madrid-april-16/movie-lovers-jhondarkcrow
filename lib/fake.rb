require'Imdb'



class Fake
attr_accessor :movies_array, :poster
	def initialize
		@movies_array = []
		@title = ""
		@poster = ""
	end


	def search_movies(title)
		@title = title
		i= Imdb::Search.new(@title)
		@poster=i.movies[0].poster
		add_movie(@poster)
	end

	def add_movie(poster)
		@movies_array.push(poster)
	end

	def print_movie
		@movies_array.each do|search|
			puts search
		end	
	end

end

fake = Fake.new
fake.search_movies('star wars')
fake.search_movies('star trek')
#fake.search_movies('robocop')
#fake.search_movies('rambo')
#fake.search_movies('ghostbusters')
#fake.search_movies('star trek')
#fake.search_movies('Robocop')
#fake.search_movies('Rambo')
#fake.search_movies('titanic')
#fake.print_movie


