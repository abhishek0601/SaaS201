#Inheritance
class A
	def m1
		puts "Parent Class"
	end
end

class B < A
	def m2
		puts "Child Class"
	end
end

b1=B.new
	
b1.m1

b1.m2
