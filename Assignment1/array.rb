=begin
Create a menu based application to perform the following
operations on numeric array.

1. Add value
2. minimum 3. maximum 4.sum 5. average 6. search 7.display 8.
delete value by index 9. delete value 10. exit
=end

A=Array.new

loop do
	puts "Enter your Choice"
	puts "1. Add value 2. minimum 3. maximum 4.sum 5. average 6. search 7.display 8.delete value by index 9. delete value 10. exit"
	c=gets.chomp.to_i
	break if c==10
	case c
	when 1
		puts "Enter a value to add into the array"
		x=gets.chomp.to_i
		A.push(x)
	when 2
		puts "Min value of Array is #{A.min}"
	when 3
		puts "Max value of Array is #{A.max}"
	when 4
		puts "Sum of Array elements: #{A.sum}"
	when 5
		puts "Average of Array elements #{A.sum.to_f/A.length}"
	when 6
		puts "Enter an element to search"
		x=gets.chomp.to_i
		"Index of the required element is #{A.find_index(x)}"
	when 7
		puts A
	when 8
		puts "Enter the index value of the element to be deleted"
		x=gets.chomp.to_i
		A.delete_at(x)
	when 9
		puts "Enter the value of the element to be deleted"
		x=gets.chomp.to_i
		A.delete(x)
	when 10
		"Thank you"
	else
		"Invalid Option"
	end
end
