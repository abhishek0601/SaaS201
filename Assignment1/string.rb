=begin
Create a menu based application to perform the following
operations on String array which contains email ids.

1. Add mail id
2. display all 3. display only edu mail ids 4. search 5. delete mail id
by value 6. display unique domains of all mail ids 7. count mail ids in given domain

8. exit
=end
S=Array.new

loop do
	puts "Enter your Choice"
	puts "1. Add mail id 2. display all 3. display only edu mail ids 4. search 5. delete mail id by value 6. display unique domains of all mail ids 7. count mail ids in given domain 8. exit"
	c=gets.chomp.to_i
	break if c==8
	case c
	when 1
		puts "Enter email ID"
		x=gets.chomp
		S.push(x)
	when 2
		puts S
	when 3
		puts S.grep(/edu/)
	when 4
		puts "Enter mail id to search"
		x=gets.chomp
		"Index of the required element is #{S.find_index(x)}"
	when 5
		puts "Enter the mail id to be deleted"
		x=gets.chomp
		S.delete(x)
	when 6
		for i in 0..S.length  
        		for j in 0..i
          			if S[i] == S[j] 
	               			break; 
				end			
			end
       			if (i == j) 
          			puts S[i] 
			end
		end
	when 7
		puts S.length
	when 8
		"Thank you"
	else
		"Invalid Option"
	end
end
