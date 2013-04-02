module DisciplinesHelper
  
  def show_course( id )
    course = Course.find(id)
    course.name
  end
end
