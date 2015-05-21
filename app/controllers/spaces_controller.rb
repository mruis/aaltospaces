class SpacesController < ApplicationController
  def index
    if params[:name]
      @space = Space.where('lower(name) = ?', params[:name].downcase).first
      @spaces = Space.all
    else
      @spaces = Space.all
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