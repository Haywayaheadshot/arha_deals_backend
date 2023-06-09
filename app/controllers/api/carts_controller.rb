class Api::CartsController < ApplicationController
  def index
    @cart = Cart.all
    render json: @cart
  end
end
