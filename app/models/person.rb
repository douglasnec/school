class Person < ActiveRecord::Base
  # attr_accessible :title, :body
  acts_as_superclass
end
