class BuildingsController < ApplicationController
  def index
  	@buildings = Building.all
  end

  def new
    @building = Building.new
  end

  def edit
  end

  def show
    @building = Building.find(params[:id])
  end

  private

  def building_params
    params.require(:building).permit(:name, :lat, :lng)
  end

end
