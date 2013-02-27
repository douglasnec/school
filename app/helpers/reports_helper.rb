module ReportsHelper
  def findStudents(grade_id)
    @reg = Registration.where("grade_id = ?", grade_id)
  end  
end
