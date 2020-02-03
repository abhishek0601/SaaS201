def Add(x,y)
	return x+y
end
def Subtract(x,y)
	return x-y
end
def Multiply(x,y)
	return x*y
end
def Divide(x,y)
	if(y==0)
		puts "Not possible"
	else
		return (x/y).to_f
	end
end


loop do
	puts "Enter your choice"
	puts "1.Addition 2.Subtraction 3.Multiply 4.Divide 5.Exit"
	c=gets.chomp.to_i
	break if c==5
	puts "Enter the value of x and y"
	x=gets.chomp.to_i
	y=gets.chomp.to_i
	case c
	
	when 1		
		puts Add(x,y)
	when 2
		puts Subtract(x,y)
	when 3
		puts Multiply(x,y)
	when 4
		puts Divide(x,y)
	when 5
		puts "Thanks"
	else
		"Invalid Option"
	end

	
end
