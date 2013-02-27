class InterprisesController < ApplicationController
  # GET /interprises
  # GET /interprises.json
  def index
    @interprises = Interprise.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @interprises }
    end
  end

  # GET /interprises/1
  # GET /interprises/1.json
  def show
    @interprise = Interprise.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @interprise }
    end
  end

  # GET /interprises/new
  # GET /interprises/new.json
  def new
    @interprise = Interprise.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @interprise }
    end
  end

  # GET /interprises/1/edit
  def edit
    @interprise = Interprise.find(params[:id])
  end

  # POST /interprises
  # POST /interprises.json
  def create
    @interprise = Interprise.new(params[:interprise])

    respond_to do |format|
      if @interprise.save
        format.html { redirect_to @interprise, notice: 'Interprise was successfully created.' }
        format.json { render json: @interprise, status: :created, location: @interprise }
      else
        format.html { render action: "new" }
        format.json { render json: @interprise.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /interprises/1
  # PUT /interprises/1.json
  def update
    @interprise = Interprise.find(params[:id])

    respond_to do |format|
      if @interprise.update_attributes(params[:interprise])
        format.html { redirect_to @interprise, notice: 'Interprise was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @interprise.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /interprises/1
  # DELETE /interprises/1.json
  def destroy
    @interprise = Interprise.find(params[:id])
    @interprise.destroy

    respond_to do |format|
      format.html { redirect_to interprises_url }
      format.json { head :no_content }
    end
  end
end
