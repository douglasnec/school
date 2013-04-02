class InterprisesController < ApplicationController
  respond_to :json, :html
  def index
    @interprises = Interprise.all

    respond_with @interprises
  end

  def show
    @interprise = Interprise.find(params[:id])

    respond_with @interprise
  end

  def new
    @interprise = Interprise.new
    3.times{ @interprise.telephones.build }
    @interprise.addresses.build
    @interprise.courses.build
    @rotations = Rotation.all
    @acao = 1
    respond_with @interprise
  end

  def edit
    @interprise = Interprise.find(params[:id])
    case @interprise.telephones.count
    when 2
      @interprise.telephones.build
    when 1
      2.times{ @interprise.telephones.build }
    when 0
      3.times{ @interprise.telephones.build }
    end

    @interprise.addresses.build if !@interprise.addresses.present?
    @rotations = Rotation.all      
    @acao = 2
  end

  def create
    @interprise = Interprise.new(params[:interprise])

    flash[:notice] =  'Interprise was successfully created.' if @interprise.save
    respond_with @interprise, :location => interprises_path
  end

  def update
    @interprise = Interprise.find(params[:id])

    flash[:notice] = 'Interprise was successfully updated.' if @interprise.update_attributes(params[:interprise])
    respond_with @interprise
  end

  def destroy
    @interprise = Interprise.find(params[:id])
    flash[:notice] = 'Interprise was successfully removed.' if @interprise.destroy
    respond_with @interprise
  end
end
