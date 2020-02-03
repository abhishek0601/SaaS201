class Employee
	attr_accessor :name
	def initialize(name)
		@name=name	
	end

end
	
class PartTime < Employee
	def initialize()
		puts "Part Time Employee Object Created"	
	end	
	def m1
		e1=Employee.new("Ram")
		puts e1.name
		puts "Part Time Employee"
	end
	public :m1
end

class FullTime < Employee
	def initialize()
		puts "Full Time EMployee Object Created"
	end
	def m2
		e2=Employee.new("Rahul")
		puts e2.name
		puts "Full Time Employee"
	end
end

p=PartTime.new
p.m1

f=FullTime.new
f.m2
