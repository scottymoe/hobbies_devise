class SlopesController < ApplicationController
  before_action :set_slope, only: [:show, :edit, :destroy]
  def index
    @slopes = current_user.slopes
  end

  def show
  end

  def new
    @slope = Slope.new
  end

  def create
    @slope = current_user.slopes.new(slope_params)
    if @slope.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  private

  def set_slope
    @slope = current_user.games.find(params[:id])
  end

  def slope_params
    params.require(:slope).permit(:name, :difficulty, :length)
  end


end
