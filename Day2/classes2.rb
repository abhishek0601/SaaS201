class Book
	attr_reader :title, :author, :price
	attr_writer :title, :author, :price
	
	def is_price_high?
		if @price >1000
			return true
		else
			return false
		end
	end
end

b2 =Book.new
b2.title=("The Davinci Code")
b2.author=("Dan Brown")
b2.price=2000

puts "Title:"+b2.title
puts "Author:"+b2.author
puts "Price",b2.price
puts "Is the price of the book high?",b2.is_price_high?
