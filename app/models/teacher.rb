class Teacher < ActiveRecord::Base
  attr_accessible :date_hire, :referece_discipline
  inherits_from :person
  
  has_many :disciplines
end
