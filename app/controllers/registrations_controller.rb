class RegistrationsController < ApplicationController
  before_filter :loadSelect
  # GET /registrations
  # GET /registrations.json
  def index
    @registrations = Registration.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @registrations }
    end
  end

  # GET /registrations/1
  # GET /registrations/1.json
  def show
    @registration = Registration.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @registration }
    end
  end

  # GET /registrations/new
  # GET /registrations/new.json
  def new
    @registration = Registration.new
    @control = 1;
    
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @registration }
    end
  end

  # GET /registrations/1/edit
  def edit
    logger.debug "The object is #{params}"
    @registration = Registration.find(params[:id])
    @control = 0;
  end

  # POST /registrations
  # POST /registrations.json
  def create
    
    mark = params[:mark_all]
    if(mark.nil?)
      @registration = Registration.new(params[:registration])
    else
      # se eu tiver as disciplinas portugues, matematica e fisica do curso 'primeira série - matutino'
      # ao invés de entrar em cada disciplina e inscrever, eu posso marcar para inscrever em todas as
      # disciplinas no curso "primeira série - matutino"
      busca = Grade.where("id = ?", params[:registration][:grade_id])
      @grade = busca.first
      @grades_relacionadas = Grade.where("course_id = ?", @grade.course_id)
      @grades_relacionadas.each do |i|
        params[:registration][:grade_id] = i.id
        logger.debug params[:registration]
        @registration = Registration.new(params[:registration])     
        @registration.save   
      end
    end
    respond_to do |format|
      if @registration.save
        format.html { redirect_to registrations_path, notice: 'Registration was successfully created.' }
        format.json { render json: @registration, status: :created, location: @registration }
      else
        format.html { render action: "new" }
        format.json { render json: @registration.errors, status: :unprocessable_entity }
      end
    end    
  end

  # PUT /registrations/1
  # PUT /registrations/1.json
  def update
    @registration = Registration.find(params[:id])
    
    respond_to do |format|
      if @registration.update_attributes(params[:registration])
        format.html { redirect_to registrations_path, notice: 'Registration was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @registration.errors, status: :unprocessable_entity }
      end
    end
      
  end

  # DELETE /registrations/1
  # DELETE /registrations/1.json
  def destroy
    @registration = Registration.find(params[:id])
    @registration.destroy

    respond_to do |format|
      format.html { redirect_to registrations_url }
      format.json { head :no_content }
    end
  end
  
  def loadSelect
    @grades = Grade.all
    @students = Student.all
  end
end
