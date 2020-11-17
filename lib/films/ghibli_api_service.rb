class GhibliApiService
  def get_films
    response = Faraday.get("https://ghibliapi.herokuapp.com/films")
    parse(response)
  end

  def parse(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end