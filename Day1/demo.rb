puts "Findind a^n"
puts "Enter the value of a"
a=gets.chomp.to_i
puts "Enter the value of n"
n=gets.chomp.to_i
prod=1
while n>0
	prod=a*prod
	n=n-1
end

puts "Required Result #{prod}"
