class ReportsController < ApplicationController
  def listar_turmas
    @courses = Course.all
    @teachers = Teacher.all
    
    # logger.debug params[:course_id]    
    
    @registrations = Registration.by_course(params[:course_id]).by_teacher(params[:teacher_id]).all(:order => "grade_id")
    
    respond_to do |format|
      format.html # listar_turmas.html.erb
      format.json { render json: @registrations }
    end
  end
end