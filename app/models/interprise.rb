class Interprise < ActiveRecord::Base
  attr_accessible :fantasy_name, :name, :addresses_attributes, :telephones_attributes, :courses_attributes
  has_many :courses   
  has_many :students   
  has_many :addresses
  has_many :telephones
  has_many :courses
  
  accepts_nested_attributes_for :addresses, :allow_destroy => true,
                                            :reject_if => proc {|address| address['street'].blank? }
  accepts_nested_attributes_for :telephones, :allow_destroy => true,
                                            :reject_if => proc {|tel| tel['number'].blank? }
  accepts_nested_attributes_for :courses, :allow_destroy => true,
                                            :reject_if => proc {|course| course['name'].blank? }
end
