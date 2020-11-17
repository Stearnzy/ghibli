class FilmView
  def initialize(film_objects)
    @film_objects = film_objects
  end

  def display_films
    @film_objects.each do |film|
      puts "Title: #{film.title}"
      puts "Director: #{film.director}"
      puts "Producer: #{film.producer}"
      puts "Rotten Tomato Score: #{film.rotten_tomato_score}"
      puts "-------------------"
    end
  end
end