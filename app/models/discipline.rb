class Discipline < ActiveRecord::Base
  attr_accessible :name, :course_id, :teacher_id
  belongs_to :course
  belongs_to :teacher
  validates_presence_of :name, :course_id, :teacher_id
  
  has_many :grades
end
