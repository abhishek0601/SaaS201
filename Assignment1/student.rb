=begin
Create a Student class with attributes as rollno, name,
state, branch, cgpa. Crate a menu based program to perform
following operations on Student class.

1. Add new student 2. display all students 3. display student by branch 4. display
students by state 5. Search students by roll number 6. search by part of the name, 7.
delete by roll number 8. count and display number of students by state 9. count and
display number of students by branch 10. exit
=end
class Student
	attr_accessor :rollno, :name, :state, :branch, :cgpa
end

arr=Array.new

loop do
	puts "Enter your Choice"
	puts "1. Add new student 2. display all students 3. display student by branch 4. display students by state 5. Search students by roll number 6. search by part of the name, 7.delete by roll number 8. count and display number of students by state 9. count and display number of students by branch 10. exit"
	c=gets.chomp.to_i
	break if c==10
	case c
	when 1
		x = Student.new
		puts "Enter Name"
		x.name= gets.chomp
		puts "Enter Roll No"
		x.rollno= gets.to_i
		puts "Enter Branch"
		x.branch= gets.chomp
		puts "Enter CGPA"
		x.cgpa= gets.to_f
		puts "Enter State"
		x.state= gets.chomp
		arr.push x
		puts "Student has been added successfully\n"
	when 2
		k = 1
		for i in arr
		puts "\nStudent #{k}:",i.name,i.rollno,i.branch,i.cgpa,i.state
		k+=1
		end
	when 3
		puts "Student By Branch"
		ans = arr.sort_by {|x| x.branch}
		k = 1
		
		for i in ans
		puts "\nStudent #{k}:",i.name,i.rollno,i.branch,i.cgpa,i.state
		k+=1
		end
	when 4
		puts "Student By State"
		ans = arr.sort_by {|x| x.state}
		k = 1
		
		for i in ans
		puts "\nStudent #{k}:",i.name,i.rollno,i.branch,i.cgpa,i.state
		k+=1
		end
	when 5
		puts "Enter the Roll No. to be searched"
		key = gets.to_i
		bool = true
		for i in arr
		if i.rollno == key
		puts "\nStudent Details:",i.name,i.rollno,i.branch,i.cgpa,i.state
		bool = false
		break
		end
		end
		puts "Student with given Roll No not found" if bool == true
	when 6
		puts "Enter the part of the name to be searched"
		key = gets.chomp
		bool = true
		for i in arr
		if i.name.include?key
		puts "\nStudent Details:",i.name,i.rollno,i.branch,i.cgpa,i.state
		bool = false
		end
		end
		puts "Student with given part of name not found" if bool == true
	when 7
		puts "Enter the roll no of the student to be deleted"
		key = gets.to_i
		bool = true
		for i in arr
		if i.rollno == key
		puts "\nDetails of deleted student is:",i.name,i.rollno,i.branch,i.cgpa,i.state
		bool = false
		arr.delete i
		break
		end
		end
		puts "Student with given roll no not found" if bool == true
	when 8
		ans = arr.sort_by{|i| i.state}
		cnt = 1
		temp = ans[0].state
		puts "\n#{temp}:","\t"+ans[0].name,"\t"+ans[0].rollno.to_s,"\t"+ans[0].branch,"\t"+ans[0].cgpa.to_s,"\t"+ans[0].state
		for i in (1..ans.length-1)
		if ans[i].state == temp
		cnt+=1
		puts "\n\t"+ans[i].name,"\t"+ans[i].rollno.to_s,"\t"+ans[i].branch,"\t"+ans[i].cgpa.to_s,"\t"+ans[i].state
		else
		puts "No. of students from #{temp} are #{cnt}\n\n"
		cnt = 1
		temp = ans[i].state
		puts "#{temp}:","\t"+ans[i].name,"\t"+ans[i].rollno.to_s,"\t"+ans[i].branch,"\t"+ans[i].cgpa.to_s,"\t"+ans[i].state
		end
		end
		puts "No. of students from #{temp} are #{cnt}\n\n"
	when 9
		ans = arr.sort_by{|i| i.branch}
		cnt = 1
		temp = ans[0].branch
		puts "\n#{temp}:","\t"+ans[0].name,"\t"+ans[0].rollno.to_s,"\t"+ans[0].branch,"\t"+ans[0].cgpa.to_s,"\t"+ans[0].state
		for i in (1..ans.length-1)
		if ans[i].branch == temp
		cnt+=1
		puts "\n\t"+ans[i].name,"\t"+ans[i].rollno.to_s,"\t"+ans[i].branch,"\t"+ans[i].cgpa.to_s,"\t"+ans[i].state
		else
		puts "No. of students from #{temp} are #{cnt}\n\n"
		cnt = 1
		temp = ans[i].branch
		puts "#{temp}:","\t"+ans[i].name,"\t"+ans[i].rollno.to_s,"\t"+ans[i].branch,"\t"+ans[i].cgpa.to_s,"\t"+ans[i].state
		end
		end
		puts "No. of students from #{temp} are #{cnt}\n\n"
	when 10
		"Thank you"
	else
		"Invalid Option"
	end
end
