#Estilo al código
class PERSON
  
  LIFE_STAGE = {childhood: 12, teenager: 19, adult: 50}
  LEGAL_AGE = 18
  attr_accessor :name

  def initialize ( name,age ) 
    @name = name
    @age = age
  end
    
  def age
    @age
  end

  def life_stage
    case
    when @age < LIFE_STAGE[:childhood] then :childhood
    when @age < LIFE_STAGE[:teenager] then :teenager
    when @age < LIFE_STAGE[:adult] then :adult
    else :elder
    end
  end

  def legal
    @age >= LEGAL_AGE
  end

end

fernando = PERSON.new("Fernando",5)
juan = PERSON.new("Juan",45)
laura = PERSON.new("Laura",87)
andrea = PERSON.new("Andrea",13)

puts fernando.legal == false
puts juan.legal == true
puts laura.legal == true
puts andrea.legal == false

puts fernando.life_stage == :childhood
puts juan.life_stage == :adult
puts laura.life_stage == :elder
puts andrea.life_stage == :teenager

puts laura.age == 87
laura.name = "Ximena"
puts laura.name == "Ximena"

#Todas las prueban dan true