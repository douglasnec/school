class Course < ActiveRecord::Base
  attr_accessible :interprise_id, :name, :rotation_id
  belongs_to :rotation
  belongs_to :interprise
  
  has_many :grades
  
  
end
