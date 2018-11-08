class Api::V1::TechniqueOpenVideosController < ApplicationController


  def create

    @technique_open_videos = TechniqueOpenVideo.new(technique_open_videos_params)
    if @technique_open_videos.save
      render json:  @technique_open_videos
    else
      render json: {errors: @technique_open_videos.errors.full_messages}
    end
  end


  def index
    @technique_open_videoss = TechniqueOpenVideo.all
    render json: @technique_open_videoss
  end

  def show
    @technique_open_videoss = TechniqueOpenVideo.find(params[:id])
    render json: @technique_open_videoss
  end

  def destroy
    @technique_open_videos = TechniqueOpenVideo.find(params[:id])
    @technique_open_videos.destroy
  end

  private


  def technique_open_videos_params
    params.require(:technique_open_videos).permit(:title, :description, :link, :author, :image, :technique_open_videos_id, :category_id)
  end
end
