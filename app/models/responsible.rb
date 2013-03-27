class Responsible < ActiveRecord::Base
  attr_accessible :name, :birth, :responsible_to
  inherits_from :person
  
  belongs_to :student
end
