class Teacher < ActiveRecord::Base
  attr_accessible :date_hire, :name, :birth, :referece_discipline, :addresses_attributes, :telephones_attributes
  inherits_from :person
  
  has_many :addresses
  has_many :telephones  
  has_many :disciplines
  
  accepts_nested_attributes_for :addresses, :allow_destroy => true,
                                  :reject_if => proc {|address| address['street'].blank? }
  accepts_nested_attributes_for :telephones, :allow_destroy => true,
                                  :reject_if => proc {|telephone| telephone['number'].blank? }
end
