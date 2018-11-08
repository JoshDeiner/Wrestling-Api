class Api::V1::MoreSeasonsController < ApplicationController


  def create

    @more_seasons = MoreSeason.new(more_seasons_params)
    if @more_seasons.save
      render json:  @more_seasons
    else
      render json: {errors: @more_seasons.errors.full_messages}
    end
  end


  def index
    @more_seasonss = MoreSeason.all
    render json: @more_seasonss
  end

  def show
    @more_seasonss = MoreSeason.find(params[:id])
    render json: @more_seasonss
  end

  def destroy
    @more_seasons = MoreSeason.find(params[:id])
    @more_seasons.destroy
  end

  private


  def more_seasons_params
    params.require(:more_seasons)
    .permit(:title, :description, :link, :author, :image, :more_seasons_id, :category_id)
  end
end
