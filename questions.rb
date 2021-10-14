class Questions

  attr_reader :first, :second

  def initialize
    @first = rand(1..10)
    @second = rand(1..10)
  end

  def num_answer
    self.first + self.second
  end

  def new_question
    puts "What is #{@first} + #{@second}?"
  end

end