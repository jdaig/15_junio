#Números romanos (DIVIDE Y VENCERÁS)

def to_roman(n)
  roman1 = ["I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX"]
  roman2 = ["X", "XX", "XXX", "XL", "L", "LX", "LXX", "LXXX", "XC"]
  roman3 = ["C", "CC", "CCC", "CD", "D", "DC", "DCC", "DCCC", "CM"]
  roman4 = ["M"]
  roman_co = [roman1, roman2, roman3, roman4]
  to_roman = []

  n_a = n.to_s.split("").map{|x| x.to_i} #Separa un número en un array
  for i in 0...n_a.length
    n_a.each do |number|
      to_roman[i] = roman_co[n_a.length- 1 - i][number - 1] if n_a[i] == number 
    end 
  end
  to_roman.join
end

a = to_roman(1) 
b = to_roman(3) 
c = to_roman(4) 
d = to_roman(9) 
e = to_roman(13) 
f = to_roman(14) 
g = to_roman(944) 
h = to_roman(1453) 
i = to_roman(1646) 

puts "|valid |input | expected | actual"
puts "|------|------|----------|-------"
puts "| #{a} |1     | I        | #{to_roman(1)}"
puts "| #{b} |3     | III      | #{to_roman(3)}"
puts "| #{c} |4     | IV       | #{to_roman(4)}"
puts "| #{d} |9     | IX       | #{to_roman(9)}"
puts "| #{e} |13    | XIII     | #{to_roman(13)}"
puts "| #{f} |14    | XIV      | #{to_roman(14)}"
puts "| #{g} |944   | CMXLIV   | #{to_roman(944)}"
puts "| #{h} |1453  | MCDLIII  | #{to_roman(1453)}"
puts "| #{i} |1646  | MDCXLVI  | #{to_roman(1646)}" 