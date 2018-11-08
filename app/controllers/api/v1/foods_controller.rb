class Api::V1::FoodsController < ApplicationController





  def create

    @food_habit = Food.new(food_habit_params)
    if @food_habit.save
      render json:  @food_habit
    else
      render json: {errors: @food_habit.errors.full_messages}
    end
  end



  def index
    @foods = Food.all
    render json: @foods

  end

  def show
    @food = Food.find(params[:id])
    render json: @food
  end

  def destroy
    @food_habit = Food.find(params[:id])
    @food_habit.destroy
  end

  private


  def food_habit_params
    params.require(:food_habit).permit(:title, :description, :link, :author, :image, :food_habit_id, :category_id)
  end
end
