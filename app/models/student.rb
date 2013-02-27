class Student < ActiveRecord::Base
  attr_accessible :interprise_id, :name, :registration_number
  
  belongs_to :interprise
  
  has_many :registrations
end
