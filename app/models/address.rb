class Address < ActiveRecord::Base
  attr_accessible :adjunct, :city_id, :district, :number, :street, :type_address
  
  belongs_to :student
  belongs_to :interprise 
end
