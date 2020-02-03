class Book
	attr_accessor :title, :author
	def initialize(atitle=nil, aauthor=nil)
		@title=atitle
		@author=aauthor
	end
	def to_s
		puts "Name: #{@title} and Author: #{@author}"	
	end
end

b1=Book.new("Book1","author1")
puts b1.title,b1.author

b1.to_s
