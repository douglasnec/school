class Telephone < ActiveRecord::Base
  attr_accessible :contact, :number  
  
  belongs_to :student
  belongs_to :interprise
end
