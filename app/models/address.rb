class Address < ActiveRecord::Base
  attr_accessible :adjunct, :city_id, :district, :number, :street, :type_address, :student_id, :interprise_id
  
  belongs_to :student
  belongs_to :interprise 
  
  
  
end
