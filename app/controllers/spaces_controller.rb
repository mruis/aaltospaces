class SpacesController < ApplicationController
  def index
    if params[:search]
      @space = Space.where('lower(name) = ? OR lower(code) = ?', params[:search].downcase, params[:search].downcase).first
    else
      @space = Space.where('name = ?', "Päärakennus").first
    end
  end

  def new
  	@space = Space.new
  end

  def show
    
  end

  private

  def building_params
    params.require(:space).permit(:name, :code, :building, :address, :lat, :lng)
  end
end