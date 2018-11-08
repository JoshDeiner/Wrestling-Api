class Api::V1::SpecialMatchesController < ApplicationController


  def create

    @special_match = SpecialMatch.new(special_match_params)
    if @special_match.save
      render json:  @special_match
    else
      render json: {errors: @special_match.errors.full_messages}
    end
  end


  def index
    @special_matchs = SpecialMatch.all
    render json: @special_matchs
  end


  def show
    @special_matchs = SpecialMatch.find(params[:id])
    render json: @special_matchs
  end

  def update
    byebug
    @special_match = SpecialMatch.find(params[:id])

  end

  def destroy
    @special_match = SpecialMatch.find(params[:id])
    @special_match.destroy
  end

  private


  def special_match_params
    params.require(:special_match).permit(:description, :link, :image, :match_id, :category_id)
  end



end
