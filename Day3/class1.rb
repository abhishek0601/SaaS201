class Book
	attr_accessor :title, :author
    	def initialize(atitle=nil, aauthor=nil)
		   @title=atitle
		   @author=aauthor
	          end
            end

b1=Book.new("Book1","author1")
puts b1.title,b1.author

b2=Book.new("Book2","Author2")
puts b2.title,b2.author

b3=Book.new("Book3")
puts b3.title,b3.author

puts b3.methods #displays all the methods

puts b1
