require "minitest/autorun"
require_relative "../../lib/flicks/movie"

class MovieTest < Minitest::Test

    def test_has_a_capialized_title
        movie = Movie.new("goonies", 10)

        assert_equal "Goonies", movie.title
    end

    def test_has_an_initial_rank
        movie = Movie.new("goonies", 10)

        assert_equal 10, movie.rank
    end

    def test_has_a_string_representation
        movie = Movie.new("goonies", 10)

        assert_equal "Goonies has a rank of 10", movie.to_s
    end

    def test_thumbs_up_increases_rank_by_1
        movie = Movie.new("goonies", 10)

        movie.thumbs_up

        assert_equal 11, movie.rank 
    end

    def test_thumbs_down_decreases_rank_by_1
        movie = Movie.new("goonies", 10)

        movie.thumbs_down

        assert_equal 9, movie.rank 
    end

end