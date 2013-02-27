class Grade < ActiveRecord::Base
  attr_accessible :course_id, :discipline_id, :teacher_id
  validates_uniqueness_of :course_id, :scope => [:discipline_id, :teacher_id]
  
  belongs_to :course
  belongs_to :discipline
  belongs_to :teacher
  
  has_many :registrations
end
