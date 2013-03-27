class StudentsController < ApplicationController
  before_filter :loadSelect
  respond_to :html, :json, :js
  
  def index
    @students = Student.all
    respond_with(@students)
  end

  def show
    @student = Student.find(params[:id])
    respond_with(@student)
  end

  def new
    @student = Student.new
    2.times{ @student.responsibles.build }
    @student.addresses.build
    3.times{ @student.telephones.build }            
    @acao = 1
    respond_with(@student)
  end
  
  def edit
    @student = Student.find(params[:id])
    # tratando quantidade dos campos responsibles que por padrão são 2
    respo = @student.responsibles.count
    case respo
    when 0
      2.times{ @student.responsibles.build }
    when 1
      @student.addresses.build
    end
    # tratando telephones
    tels = @student.telephones.count
    case tels
      when 1 
        2.times { @student.telephones.build }
      when 2
        @student.telephones.build
      when 0
        3.times { @student.telephones.build }  
    end
    @acao = 2
  end
  
  def create
    @student = Student.new(params[:student])    
    
    flash[:notice] = "Student was successfully created." if @student.save
    respond_with(@student, :location => students_path)      
  end

  def update
    @student = Student.find(params[:id])
    @student.update_responsibles_attributes(params)
    @student.update_attributes(params[:student]) if flash[:notice] = "Student was successfully updated."      
    respond_with(@student, :location => students_path)      
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy
    respond_with(nil, :location => @student)
  end
  
  def loadSelect
    @grades = Grade.all
    @students = Student.all
  end
  
  def addresponsible
    logger.debug(' ### #{params}') 
  end
end