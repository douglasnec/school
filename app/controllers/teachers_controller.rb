class TeachersController < ApplicationController
  respond_to :json, :html, :js
  
  def index
    @teachers = Teacher.all

    respond_with @teachers
  end

  def show
    @teacher = Teacher.find(params[:id])

    respond_with @teacher
  end

  def new
    @teacher = Teacher.new
    3.times{ @teacher.telephones.build }
    @teacher.addresses.build
    @acao = 1
    
    respond_with @teacher
  end

  def edit
    @teacher = Teacher.find(params[:id])
    case @teacher.telephones.count
      when 0
        3.times{ @teacher.telephones.build }
      when 1
        2.times{ @teacher.telephones.build }
      when 2
        @teacher.telephones.build 
    end
    
    @teacher.addresses.build if @teacher.addresses.count == 0
    @acao = 2
  end

  def create
    @teacher = Teacher.new(params[:teacher])

    flash[:notice] = 'Teacher was successfully created.' if @teacher.save
    respond_with(@teacher, :location => teachers_path)    
  end

  def update
    @teacher = Teacher.find(params[:id])
    
    flash[:notice] = 'Teacher was successfully updated.' if @teacher.update_attributes(params[:teacher])
    respond_with(@teacher, :location => teachers_path)    
  end

  def destroy
    @teacher = Teacher.find(params[:id])
    
    flash[:notice] = 'Teacher was successfully removed.' if @teacher.destroy
    respond_with(nil, :location => @teacher)    
  end
end
