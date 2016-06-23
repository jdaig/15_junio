user = ARGV.first
prompt = '> '
puts "Hi #{user}, I'm the #{$0} script."
puts "I'd like to ask you, what do you want to translate to pig-latin?"
print prompt
sentence = STDIN.gets.chomp
  
  vowels =["a", "e", "i", "o", "u"]
  s = sentence.split(" ")
  r = s.map do |word|
        word.downcase!
        s_s = word.split("")
        if vowels.include?(s_s[0]) 
          (s_s<<"way").join
        else 
          i = 0
          while vowels.include?(s_s[i])==false
            s_s<<s_s[i]
            s_s[i] = nil
            i += 1
          end
          (s_s<<"ay").join
        end
      end
  r = r.map{|word| (word == " ")? " " : word + " "}.join
  puts r
