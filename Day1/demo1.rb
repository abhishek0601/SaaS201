puts "To demonstrate the usage of Arrays"
a=[10,20,30,40,50]
puts "Reverse Order"
puts a.reverse
puts "Length of the Array"
puts a.length
name=Array.new(10) {|e| e=e*2}
puts "#{name}"
digits=Array(0..9)
puts "#{digits}"
