class Api::ReelsController < ApplicationController
  def index
    @reels = Reel.all
    render json: @reels,
           only: %i[id title duration video_src category description link]
  end
end
