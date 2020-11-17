class PeopleView
  def initialize(person_objects)
    @person_objects = person_objects
  end

  def display_people
    @person_objects.each do |person|
      puts "Name: #{person.name}"
      puts "-------------"
    end
  end
end