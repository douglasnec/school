class Student < ActiveRecord::Base
  # attr_accessible :title, :body
  inherits_from :person
end
