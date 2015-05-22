class SpacesController < ApplicationController
  def index
    if params[:search]
      @space = Space.where('name = ? OR code = ?', params[:search], params[:search]).first
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