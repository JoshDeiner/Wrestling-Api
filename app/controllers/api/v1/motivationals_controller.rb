class Api::V1::MotivationalsController < ApplicationController


  def create

    @motivational = Motivational.new(motivational_params)
    # @reading = Reading.new(user_id: loggedin_user.id, article_id:params["articleId"])
    if @motivational.save
      render json:  @motivational
    else
      render json: {errors: @motivational.errors.full_messages}
    end
  end





  def index
    @motivationals = Motivational.all
    render json: @motivationals
  end

  def show
    @motivationals = Motivational.find(params[:id])
    render json: @motivationals
  end

  def destroy
    @motivational = Motivational.find(params[:id])
    @motivational.destroy
  end

  private


  def motivational_params
    params.require(:motivational).permit(:title, :description, :author, :link, :image, :motivational_id, :category_id)
  end
end
