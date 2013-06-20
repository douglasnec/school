class Student < ActiveRecord::Base
  attr_accessible :register_number, :name, :birth, :responsibles_attributes, :addresses_attributes, :telephones_attributes
  inherits_from :person
  
  has_many :registrations
  has_many :responsibles
  has_many :addresses
  has_many :telephones
  
  accepts_nested_attributes_for :responsibles, :allow_destroy => true,
                                               :reject_if => proc {|responsible| responsible['name'].blank? }
  accepts_nested_attributes_for :addresses, :allow_destroy => true,
                                            :reject_if => proc {|address| address['street'].blank? }
  accepts_nested_attributes_for :telephones, :allow_destroy => true,
                                            :reject_if => proc {|telephone| telephone['number'].blank? }  
                                               
  def update_responsibles_attributes(params)
    # para cada responsavel
    params[:student][:responsibles_attributes].each do |resp|
      id = resp[1]["id"].to_i      
      # atualizando o primeiro
      if self.responsibles.first.present?  
        original = self.responsibles.first.id.to_i                  
        if original.equal?id
          first = Responsible.find(id)
          logger.debug(resp[1]["_destroy"])
          first.name = resp[1]["name"]              
          first.save   
        end
      end
      # atualizando o segundo
      if self.responsibles.second.present?        
        original = self.responsibles.second.id.to_i
        if original.equal?id
          second = Responsible.find(id)
          second.name = resp[1]["name"]
          second.save         
        end
      end                     
    end
  end
end
