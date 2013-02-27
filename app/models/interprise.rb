class Interprise < ActiveRecord::Base
  attr_accessible :fantasy_name, :name
  has_many :courses   
  has_many :students 
end
