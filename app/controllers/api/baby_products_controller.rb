class Api::BabyProductsController < ApplicationController
  def index
    @baby_products = BabyProduct.all
    render json: @baby_products,
           only: %i[id name amount stock images_src specs condition video_src productHightlights features category]
  end
end
