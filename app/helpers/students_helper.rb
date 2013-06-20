module StudentsHelper
  
  def values(person)
    if person.birth.nil?
      ""
    else
      person.birth.strftime('%d/%m/%Y').to_s
    end
  end
  
  def type_contact(value)
    case value
      when 1
        ' (Responsible)'
      when 2
        ' (Student)'
      when 3
        ' (Contact)'
      when 4
        ' (Resident)'
      when 5
        ' (Other)'
      else
        '' 
    end
  end
end
