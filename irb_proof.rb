irb(main):002:0> 3+3312+313+21
=> 3649
irb(main):003:0> 4-4*2344
=> -9372
irb(main):004:0> string = "Holassaxass"
=> "Holassaxass"
irb(main):005:0> string.length
=> 11
irb(main):006:0> array = [0, 12, "Gerardo"]
=> [0, 12, "Gerardo"]
irb(main):007:0> puts array
0
12
Gerardo
=> nil
irb(main):008:0> print array
[0, 12, "Gerardo"]=> nil
irb(main):009:0> p array
[0, 12, "Gerardo"]
=> [0, 12, "Gerardo"]
irb(main):010:0> inspect array
ArgumentError: wrong number of arguments (given 1, expected 0)
	from (irb):10:in `to_s'
	from (irb):10
	from /Users/GerardoGage/.rbenv/versions/2.3.1/bin/irb:11:in `<main>'
irb(main):011:0> array.inspect
=> "[0, 12, \"Gerardo\"]"
irb(main):012:0> g = "AYER POR LA MADRUGADA"
=> "AYER POR LA MADRUGADA"
irb(main):013:0> g.downcase!
=> "ayer por la madrugada"
irb(main):014:0> g
=> "ayer por la madrugada"
irb(main):017:0> Math.sqrt(7690939204)
=> 87698.0
irb(main):027:0> def shout(str)
irb(main):028:1>   "#{str.upcase}"
irb(main):029:1> end
=> :shout
irb(main):030:0> 
irb(main):031:0* shout("hola")
=> "HOLA"
