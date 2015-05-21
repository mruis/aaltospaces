class SpacesController < ApplicationController
  def index
    @spaces = Space.all
  end

  def new
  	@space = Space.new
  end

  def show
    if params[:q].present?
      response = Space.search(params[:q].split.join(' AND '))
      @space = response.results.first._source
    else
      @space = []
    end
  end

  private

  def building_params
    params.require(:space).permit(:name, :code, :building, :address, :lat, :lng)
  end
end