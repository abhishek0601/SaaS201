class Book
	def title=(title)
		@title=title
	end
	def author=(author)
		@author=author
	end
	def price=(price)
		@price=price
	end	
	def get_title
		@title
	end
	def get_author
		@author
	end
	def get_price
		@price
	end
end

b=Book.new
b.title=("Harry Potter")
b.author=("J K Rowling")
b.price=(2000)
puts "Details of the Book:"
puts "Title:"+b.get_title,"Author:"+b.get_author,"Price:"+(b.get_price).to_s	
