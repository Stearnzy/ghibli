require 'faraday'
require 'json'
require 'pry'

require_relative 'ghibli_api_service'
require_relative 'film'
require_relative 'film_view'

film_data = GhibliApiService.new.get_films


film_objects = film_data.map do |film|
  Film.new(film)
end

FilmView.new(film_objects).display_films

# MOVED THIS TO SEPARATE FILE, THEN REQUIRED ABOVE ^^^
# class GhibliApiService
#   def get_films
#     response = Faraday.get("https://ghibliapi.herokuapp.com/films")
#     parse(response)
#   end
#
#   def parse(response)
#     JSON.parse(response.body, symbolize_names: true)
#   end
# end

# SAME DEAL HERE ^^^
# class Film
#   attr_reader :title, :director, :producer, :rotten_tomato_score
#
#   def initialize(data)
#     @title = data[:title]
#     @director = data[:director]
#     @producer = data[:producer]
#     @rotten_tomato_score = data[:rt_score]
#   end
# end

# MOVED THIS TO A VIEW FILE
# film_objects.each do |film|
#   puts "Title: #{film.title}"
#   puts "Director: #{film.director}"
#   puts "Producer: #{film.producer}"
#   puts "Rotten Tomato Score: #{film.rotten_tomato_score}"
#   puts "-------------------"
# end
