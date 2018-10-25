class MaterialsController < ApplicationController
  def index 
    materials=Material.all
    render json: materials,status: :ok
  end
  def create 
    material = Material.create({:name => params[:name]})
    render json: material, status: :ok
  end
end
