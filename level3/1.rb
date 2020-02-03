class Student
  def initialize(roll_no,name)
    @roll_no = roll_no
    @name = name
    @is_enrolled = false
  end

  def set
    @is_enrolled = true
  end

  def Display
    puts @name , @roll_no
  end
end

student = Student.new(711, "Abhi").set

student.Display
