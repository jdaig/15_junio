#Shuffle
def shuffle(array)
  arr = []
  while arr.length < array.length
    p = array.sample
    arr << p unless arr.include?(p)
  end
  arr
end

array = (1..15).to_a

10.times do |variable|
    raise "No esta revolviendo bien" if shuffle(array) == shuffle(array)
end
#No levanta ningún mensaje