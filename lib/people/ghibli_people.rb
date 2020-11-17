require 'faraday'
require 'json'
require 'pry'

require_relative 'ghibli_people_api_service'
require_relative 'person'
require_relative 'people_view'

person_data = GhibliPeopleApiService.new.get_people

# response = Faraday.get("https://ghibliapi.herokuapp.com/people")
#
# data = JSON.parse(response.body, symbolize_names: true)

# class Person
#   attr_reader :name
#
#   def initialize(data)
#     @name = data[:name]
#   end
# end


people_objects = person_data.map do |person|
  Person.new(person)
end

# run = people_objects.each do |person|
#   puts "Name: #{person.name}"
#   puts "-------------"
# end

PeopleView.new(people_objects).display_people