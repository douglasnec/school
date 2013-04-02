class CoursesController < ApplicationController
  respond_to :json, :html
  
  def index
    @courses = Course.all    

    respond_with @courses
  end

  def show
    @course = Course.find(params[:id])

    respond_with @course
  end

  def new
    @course = Course.new
    @rotations = Rotation.all
    @interprises = Interprise.all
    @course.disciplines.build
    @acao = 1
    respond_with @course
  end

  def edit
    @course = Course.find(params[:id])
    @rotations = Rotation.all
    @interprises = Interprise.all
    @acao = 2
  end

  def create
    @course = Course.new(params[:course])

    flash[:notice] = 'Course was successfully created.' if @course.save
    respond_with @course
  end

  def update
    @course = Course.find(params[:id])
    flash[:notice] = 'Course was successfully updated.' if @course.update_attributes(params[:course])
    respond_with @course
  end

  def destroy
    @course = Course.find(params[:id])
    flash[:notice] = 'Course was successfully removed.' if @course.destroy

    respond_with @course
  end
end
