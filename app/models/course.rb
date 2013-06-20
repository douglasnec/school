class Course < ActiveRecord::Base
  attr_accessible :interprise_id, :name, :rotation_id, :disciplines_attributes
  belongs_to :rotation
  belongs_to :interprise  
  
  has_many :grades
  has_many :disciplines
  
  accepts_nested_attributes_for :disciplines, :allow_destroy => true,
                                            :reject_if => proc {|discipline| discipline['name'].blank? } 
end
