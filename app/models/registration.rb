class Registration < ActiveRecord::Base
  attr_accessible :active, :grade_id, :student_id
  validates_uniqueness_of :grade_id, :scope => [:student_id]
  
  has_many :students
  
  belongs_to :grade
  belongs_to :student
  
  scope :by_course, lambda { |course|
    joins(:grade).where('grades.course_id = ?', course) unless course.nil? or course == ""
  }
  
  scope :by_teacher, lambda { |teacher|
    joins(:grade).where('grades.teacher_id = ?', teacher) unless teacher.nil? or teacher == ""
  }
  
  scope :by_all, lambda {
    where("registrations.id is not null")
  }
end
