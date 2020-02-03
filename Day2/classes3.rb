class Student
	def initialize(name,branch,gender)
		@name=name
		@branch=branch
		@gender=gender
	end
	def set_details(name,branch,gender)
		@name=name
		@branch=branch
		@gender=gender	
	end
	def get_details
		puts "Details:"
		puts "Name:"+@name,"Branch:"+@branch,"Gender:"+@gender
	end
end

s1=Student.new("Ram","CSE","Male")
s2=Student.new("Rahul","IT","Male")
s1.get_details
s2.get_details

