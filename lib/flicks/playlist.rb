class Playlist

	attr_reader :name, :movies


	def initialize(name)
		@name = name
		@movies = []
	end

	def add_movie(movie)
		@movies << movie
	end

	def roll_die
		rand(1..6)
	end

	def play

		puts "*" * 30
		puts "#{@name}'s playlist:"
		
		puts "\nBefore wathcing:"
		puts @movies

		@movies.each do |movie|
			number_rolled = roll_die
	
			case number_rolled
			when 1..2
				movie.thumbs_down
				puts "#{movie.title} got a 👎"
			when 3..4
				puts "#{movie.title} got skipped"
			else 
				movie.thumbs_up
				puts "#{movie.title} got a 👍"
			end
		end

		puts "\nAfter wathcing:"
		puts @movies
	end

end
