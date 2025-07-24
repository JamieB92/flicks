class Movie

	attr_reader :title, :rank
	attr_accessor :title

	def initialize(title,rank)
		@title = title.capitalize
		@rank = rank
	end


	def info
		"#{@title} has a tank of #{@rank}"
	end

	def thumbs_up
		@rank += 1 
	end 

	def thumbs_down
		@rank -= 1
	end

	def to_s
		"#{@title} has a rank of #{@rank}"
	end
end