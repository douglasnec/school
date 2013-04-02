class DisciplinesController < ApplicationController
  respond_to :json, :html
  
  before_filter :load_courses, :only => [:new, :edit]
  
  def index
    @disciplines = Discipline.order(:course_id)

    respond_with @disciplines
  end

  def show
    @discipline = Discipline.find(params[:id])

    respond_with @discipline
  end

  def new
    @discipline = Discipline.new

    respond_with @discipline
  end

  def edit
    @discipline = Discipline.find(params[:id])
  end

  def create
    @discipline = Discipline.new(params[:discipline])

    flash[:notice] = 'Discipline was successfully created.' if @discipline.save
    respond_with @discipline
  end

  def update
    @discipline = Discipline.find(params[:id])
    
    flash[:notice] = 'Discipline was successfully updated.' if @discipline.update_attributes(params[:discipline])
    respond_with @discipline   
  end

  def destroy
    @discipline = Discipline.find(params[:id])
    flash[:notice] = 'Discipline was successfully removed.' if @discipline.destroy
    respond_with @discipline
  end
  
  private
  def load_courses
    @courses = Courses.order(:name) 
    @teachers = Teacher.order(:name) 
  end
end
