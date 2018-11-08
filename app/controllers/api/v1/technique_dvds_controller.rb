class Api::V1::TechniqueDvdsController < ApplicationController


  def create

    @technique_dvd = TechniqueDvd.new(technique_dvd_params)
    if @technique_dvd.save
      render json:  @technique_dvd
    else
      render json: {errors: @technique_dvd.errors.full_messages}
    end
  end





  def index
    @technique_dvds = TechniqueDvd.all
    render json: @technique_dvds
  end

  def show
    @technique_dvds = TechniqueDvd.find(params[:id])
    render json: @technique_dvds
  end

  def destroy
    @technique_dvd = TechniqueDvd.find(params[:id])
    @technique_dvd.destroy
  end

  private


  def technique_dvd_params
    params.require(:technique_dvd).permit(:title, :description, :author, :link, :image, :technique_dvd_id, :category_id)
  end
end
