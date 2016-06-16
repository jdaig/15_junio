#Métodos destructivos
class Square
  attr_reader :number

  def initialize(number)
  	@number = number
  end
  	
  def square
    @number * @number
  end

  def square!
    @number *= @number
  end
end

num = Square.new(5)
num.square
num.number
num.square!
num.number