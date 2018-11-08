class Api::V1::MemorableWrestlersController < ApplicationController


  def create

    @memorable_wrestler = MemorableWrestler.new(memorable_wrestler_params)
    # @reading = Reading.new(user_id: loggedin_user.id, article_id:params["articleId"])
    if @memorable_wrestler.save
      render json:  @memorable_wrestler
    else
      render json: {errors: @memorable_wrestler.errors.full_messages}
    end
  end





  def index
    @memorable_wrestlers = MemorableWrestler.all
    render json: @memorable_wrestlers
  end 

  def show
    @memorable_wrestlers = MemorableWrestler.find(params[:id])
    render json: @memorable_wrestlers
  end

  def destroy
    @memorable_wrestler = MemorableWrestler.find(params[:id])
    @memorable_wrestler.destroy
  end

  private


  def memorable_wrestler_params
    params.require(:memorable_wrestler).permit(:name, :bio, :highlights, :memorable_wrestler_id, :category_id)
  end
end
