class Person < ActiveRecord::Base
  attr_accessible :name, :birth
  acts_as_superclass
  
  class << columns_hash['birth']
    def type
      :date
    end
  end
end
