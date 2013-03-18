class Student < ActiveRecord::Base
  attr_accessible :register_number, :name, :birth
  inherits_from :person
  
  has_many :registration
end
