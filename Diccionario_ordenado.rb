#Diccionario ordenado

def dictionary_sort
  dictionary_s = []
  dictionary_or = []
  dictionary_min = [] 
  puts "Escribe una palabra:"
  word = gets.chomp
  w = word.downcase
  while word != ""
    dictionary_or << word
    dictionary_min << w
    puts "Escribe otra palabra(o presiona 'enter' para finalizar):"
    word = gets.chomp
    w = word.downcase
  end
  dictionary_min.sort! #Esto para ordenar el diccioanrio con minúsculas para después
  ######################relacionarlo con el original

  for i in 0...dictionary_min.length
  	for j in 0...dictionary_or.length
      dictionary_s[i] = dictionary_or[j] if dictionary_min[i] == dictionary_or[j].downcase
    end
  end
  puts "Felicidades! Tu diccionario tiene #{dictionary_s.length} palabras:"
  puts dictionary_s
end

#Test
dictionary_sort