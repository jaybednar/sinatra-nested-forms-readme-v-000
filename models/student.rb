class Student
  attr_accessor :name, :grade

  STUDENTS = []

  def initialize(args)
    @name = args[:name]
    @grade = args[:name]
    STUDENTS << self
  end

  def self.all 
    STUDENTS 
  end 

end
