#Expresiones regulares

#Regresa true si encuentra un numero de cuenta
def is_account(string, account_type = /(\d{4})-(\d{3})-(\d{3})(,?)/)
  string = string.split(" ")
  string.select{|word| word.match(account_type) != nil}.count != 0
end

p is_account("Hola soy Pedro, mi número de cuenta es 1234-123-123")

#Regresa un numero de cuenta si existe dentro del string y nil en el caso contrario
def return_account(string)
  string = string.split(" ")
  account = /(\d{4})-(\d{3})-(\d{3})(,?)/
  if string.select{|word| word.match(account) != nil} !=0
  	puts string.select{|word| word.match(account) != nil}
  else 
  	nil
  end
end

p return_account("Hola soy Pedro, mi número de cuenta es 1234-123-123")

#Regresa un array con los números de cuenta que existen dentro del string y un array 
#vacío en el caso contrario
def return_accounts(string)
  string = string.split(" ")
  account = /(\d{4})-(\d{3})-(\d{3})(,?)/
  if string.select{|word| word.match(account) != nil} !=0
  	puts string.select{|word| word.match(account) != nil}
  else 
    []	
  end
end

p return_accountsunts("Hola soy Pedro, mis números de cuenta son 1234-123-235, 3454-423-323")

#Regresa un string donde si existen números de cuenta estos tendran remplazados por "X" los primeros 
#siete numeros. ej. "XXXX-XXX-234"
def account_x(string, account = /(\d{4})-(\d{3})-(\d{3})(,?)/)
  string = string.split(" ")
  if string.select{|word| word.match(account) != nil} !=0
  	for i in 0...string.length 
  	 puts "XXXX-XXX-" + string[i].match(account)[3] if (string[i].match(account) != nil)
    end
  else 
    []	
  end
end

p account_x("Hola soy Pedro, mis números de cuenta son 1234-123-235, 3454-423-323")

#Regresa un string formateado donde cualquier número de diez dígitos seguido o si tiene puntos en vez de guiones 
#lo regresa a su formato original donde usa guiones para dividir los diez dígitos. Si encuentra un numero de 
#menos dígitos no debería remplazarlo
def to_account(string) 
  account = /(\d{4})(.)(\d{3})(.)(\d{3})(,?)/
  number = /(\d{4})(\d{3})(\d{3})/
  string = string.split(" ")
  ret = []
  string.map do |w|
    case
  	when w.match(account) != nil
  	  r = w.match(account)[1] + "-" + w.match(account)[3] + "-" + w.match(account)[5]
  	  ret << r
  	when w.match(number) != nil
  	  r = w.match(number)[1] + "-" + w.match(number)[2] + "-" + w.match(number)[3]
  	  ret << r 
  	else
  	  r = w
  	  ret << r
    end
  end
  ret.map{|word| (ret.index(word) != ret.length - 1)? word + " " : word}.join
end

to_account("Hola soy Pedro, mis números de cuenta son 1234123235 y 3454.423.323")


