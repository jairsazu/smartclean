class CollectionsController < ApplicationController
  def index
    material = Material.find(params[:material_id])
    collections = material.collections
    render json: collections
  end
  
  def create
    collection = Collection.create(collection_params)
    material = Material.find(params[:material_id])
    collection.materials << material
    render json: collection
  end

  private
  def collection_params
    params.permit(:name, :address, :lat, :long)
  end
end
