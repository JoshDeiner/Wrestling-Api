class Api::V1::DocumentariesController < ApplicationController


  def create

    @documentary = Documentary.new(documentary_params)
    if @documentary.save
      render json:  @documentary
    else
      render json: {errors: @documentary.errors.full_messages}
    end
  end
  

  def index
    @documentarys = Documentary.all
    render json: @documentarys

  end

  def show
    @documentarys = Documentary.find(params[:id])
    render json: @documentarys
  end

  def destroy
    @documentary = Documentary.find(params[:id])
    @documentary.destroy
  end

  private


  def documentary_params
    params.require(:documentary).permit(:title, :description, :link, :author, :image, :documentary_id, :category_id)
  end
end
