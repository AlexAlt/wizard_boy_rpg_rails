class AreasController < ApplicationController
  def index
    @areas = Area.all
  end

  def show
    @area = Area.find(params[:id])
  end

  def create
    @area = Area.new(area_params)
    if @area.save
      redirect_to areas_path
    else
      flash[:notice] = "Not quite"
      redirect_to admin_path
    end
  end

  private
    def area_params
      params.require(:area).permit(:name)
    end
end
