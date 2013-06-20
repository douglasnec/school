class TelephonesController < ApplicationController
  def index
    @telephones = Telephone.all
    respond_with(@telephones)
  end

  def show
    @telephone = Telephone.find(params[:id])
    respond_with(@telephone)
  end

  def new
    @telephone = Telephone.new
    respond_with(@telephone)
  end

  def edit
    @telephone = Telephone.find(params[:id])
  end

  def create
    @telephone = Telephone.new(params[:telephone])
    @telephone.save
    respond_with(@telephone)
  end

  def update
    @telephone = Telephone.find(params[:id])
    @telephone.update_attributes(params[:telephone])
    respond_with(@telephone)
  end

  def destroy
    @telephone = Telephone.find(params[:id])
    @telephone.destroy
    respond_with(@telephone)
  end
end
