class Api::V1::CategoriesController < ApplicationController


  def create

    @category = Category.new(category_params)
    if @category.save
      render json:  @category
    else
      render json: {errors: @category.errors.full_messages}
    end
  end


  def index
    @categorys = Category.all
    render json: @categorys

  end

  def show
    @categorys = Category.find(params[:id])
    render json: @categorys
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
  end

  private


  def category_params
    params.require(:category).permit(:title, :description, :link, :author, :image, :category_id)
  end
end
