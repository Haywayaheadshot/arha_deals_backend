class Api::BabyProductsController < ApplicationController
  def index
    @baby_products = BabyProducts.all
    render json: @baby_products,
           only: %i[id name amount stock images_src specs condition video_src]
  end
end
