class RotationsController < ApplicationController
  
  respond_to :json, :html
  def index
    @rotations = Rotation.all

    respond_with @rotations
  end
  
  def show
    @rotation = Rotation.find(params[:id])

    respond_with @rotation
  end

  def new
    @rotation = Rotation.new
    @acao = 1
    respond_with :rotation
  end

  def edit
    @rotation = Rotation.find(params[:id])
    @acao = 2
  end

  def create
    @rotation = Rotation.new(params[:rotation])

    flash[:notice] = 'Rotation was successfully created.' if @rotation.save
    respond_with @rotation, :location => rotations_path
  end

  def update
    @rotation = Rotation.find(params[:id])

    flash[:notice] = 'Rotation was successfully updated.' if @rotation.update_attributes(params[:rotation])
    respond_with @rotation    
  end

  def destroy
    @rotation = Rotation.find(params[:id])
    
    flash[:notice] = 'Rotation was successfully removed.' if @rotation.destroy
    respond_with @rotation
  end
end
