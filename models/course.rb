class Course 
  attr_accessor :name, :topic 

  COURSES = []

  def initialize(args)
    @name = args[:name]
    @topic = args[:topic]
    COURSES << self 
  end 

  def self.all 
    COURSES 
  end 
  
end 