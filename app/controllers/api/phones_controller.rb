class Api::PhonesController < ApplicationController
  def index
    @phones = Phone.all
    render json: @phones,
           only: %i[id name amount stock images_src condition video_src specs]
  end
end
