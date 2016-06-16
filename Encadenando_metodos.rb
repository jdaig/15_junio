#Encadenando métodos

#Primero refactorizaremos a una sóla linea
def shout_backwards(string)
  string.upcase.reverse + "!!!"
end

p shout_backwards("hello, boot") == "TOOB ,OLLEH!!!"

#Ahora separaremos en bloques un método

#Primero definimos un submmetodo para saber si un número es primo
#Luego identificamos con el submétodo que elementos del arreglo son
#primos. Al final elevamos al cuadrado los numero que son primos
def squared_primes(array)
  def is_prime?(number)
  	c = 0
    (2...number).select do |i|
      c += 1 if number % i == 0
    end
    c == 0
  end

  r = array.find_all do |number|
    is_prime?(number)   
  end

  r.map{|number| number**2}
end

p squared_primes([1, 3, 4, 7, 42]) == [1, 9, 49]