class Film
  attr_reader :title, :director, :producer, :rotten_tomato_score

  def initialize(data)
    @title = data[:title]
    @director = data[:director]
    @producer = data[:producer]
    @rotten_tomato_score = data[:rt_score]
  end
end