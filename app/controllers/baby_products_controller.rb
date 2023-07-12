class BabyProductsController < ApplicationController
  before_action :set_baby_product, only: %i[show edit update destroy]

  # GET /baby_products or /baby_products.json
  def index
    @baby_products = BabyProduct.all
  end

  # GET /baby_products/1 or /baby_products/1.json
  def show; end

  # GET /baby_products/new
  def new
    @baby_product = BabyProduct.new
  end

  # GET /baby_products/1/edit
  def edit; end

  # POST /baby_products or /baby_products.json
  def create
    @baby_product = BabyProduct.new(baby_product_params)

    respond_to do |format|
      if @baby_product.save
        format.html { redirect_to baby_product_url(@baby_product), notice: 'Baby product was successfully created.' }
        format.json { render :show, status: :created, location: @baby_product }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baby_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /baby_products/1 or /baby_products/1.json
  def update
    respond_to do |format|
      if @baby_product.update(baby_product_params)
        format.html { redirect_to baby_product_url(@baby_product), notice: 'Baby product was successfully updated.' }
        format.json { render :show, status: :ok, location: @baby_product }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baby_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baby_products/1 or /baby_products/1.json
  def destroy
    @baby_product.destroy

    respond_to do |format|
      format.html { redirect_to baby_products_url, notice: 'Baby product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_baby_product
    @baby_product = BabyProduct.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def baby_product_params
    params.fetch(:baby_product, {})
  end
end
