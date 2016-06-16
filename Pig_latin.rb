#Pig_latin
#Primero creamos un método para aplicar a una palabra
def pig_latin_word(str)
  vowels =["a", "e", "i", "o", "u"]
  str.downcase!
  s = str.split("")
  if vowels.include?(s[0]) 
    (s<<"way").join
  else 
  	i = 0
  	while vowels.include?(s[i])==false
      s<<s[i]
      s[i] = nil
      i += 1
    end
    (s<<"ay").join
  end  
end

def pig_latin_sentence(str)
  s = str.split(" ")
  r = s.map{|word| (word == " ")? " " : pig_latin_word(word) + " "}
  r = r.join 
end