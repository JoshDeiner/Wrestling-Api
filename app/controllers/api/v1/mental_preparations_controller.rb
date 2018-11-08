class Api::V1::MentalPreparationsController < ApplicationController


  def create

    @mental_preparations = MentalPreparation.new(mental_preparations_params)
    if @mental_preparations.save
      render json:  @mental_preparations
    else
      render json: {errors: @mental_preparations.errors.full_messages}
    end
  end


  def index
    @mental_preparations = MentalPreparation.all
    render json: @mental_preparations

  end

  def show
    @mental_preparations = MentalPreparation.find(params[:id])
    render json: @mental_preparations
  end

  def destroy
    @mental_preparations = MentalPreparation.find(params[:id])
    @mental_preparations.destroy
  end

  private


  def mental_preparations_params
    params.require(:mental_preparations).permit(:title, :description, :author, :link, :image, :mental_preparation_id, :category_id)
  end
end
