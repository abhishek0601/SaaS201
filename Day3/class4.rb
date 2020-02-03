#Access Specifiers
#By Default:
 #initialize method is private 
 #instances are private
 #methods are public
class A
	#public	
	
	def m1
		puts "m1 method"
	end
	
	#public
		
	def m2
		puts "m2 method"
	end
	
	public :m1, :m2
end

a=A.new

a.m1
a.m2
