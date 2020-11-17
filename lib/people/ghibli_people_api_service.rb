class GhibliPeopleApiService
  def get_people
    response = Faraday.get("https://ghibliapi.herokuapp.com/people")
    parse(response)
  end

  def parse(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end