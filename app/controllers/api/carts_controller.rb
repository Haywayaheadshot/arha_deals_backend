class Api::CartsController < ApplicationController
  before_action :authenticate_user

  def index
    @cart_items = CartItem.joins(:cart).where(carts: { user_id: current_user_id })
    render json: @cart_items,
           only: %i[id phone_id cart_id quantity phone_quantity baby_product_id baby_products_quantity]
  end

  def add
    phone_id = add_to_cart_params[:phone_id]
    phone_id_empty = nil
    phone_quantity = add_to_cart_params[:quantity]
    phone_quantity_empty = nil
    baby_product_id = add_to_cart_params[:baby_product_id]
    baby_product_id_empty = nil
    baby_products_quantity = add_to_cart_params[:baby_products_quantity]
    baby_products_quantity_empty = nil
    @cart = Cart.create(user_id: current_user_id)
    if phone_id.blank?
      @cart_item = CartItem.create(phone_id: phone_id_empty, cart_id: @cart.id, phone_quantity: phone_quantity_empty,
                                   baby_product_id:, baby_products_quantity:)
    elsif baby_product_id.blank?
      @cart_item = CartItem.create(phone_id:, cart_id: @cart.id, phone_quantity:,
                                   baby_product_id: baby_product_id_empty,
                                   baby_products_quantity: baby_products_quantity_empty)
    end
    if @cart.save
      render json: { message: 'Phone has been added to cart', status: 201, added: @cart_item }, status: :created
    else
      render json: { error: 'Phone was not added to cart. Please refresh your page and try again' },
             status: :unprocessable_entity
    end
  end

  def delete
    phone_id = add_to_cart_params[:phone_id]

    @cart_items = CartItem.joins(:cart).where(phone_id:, carts: { user_id: current_user_id })

    if @cart_items.destroy_all
      render json: { message: 'Phone has been deleted from cart', status: 200 }
    else
      render json: { error: 'Failed to delete phones from cart' }, status: :unprocessable_entity
    end
  end

  private

  def authenticate_user
    token = request.headers['Authorization']
    decoded_token = JWT.decode(token, nil, false)
    payload = decoded_token.first
    @current_user_id = payload['user_id']
  end

  attr_reader :current_user_id

  def add_to_cart_params
    params.permit(:phone_id, :phone_quantity, :baby_product_id, :baby_products_quantity)
  end
end
