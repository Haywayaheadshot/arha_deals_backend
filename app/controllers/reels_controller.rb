class ReelsController < ApplicationController
  before_action :set_reel, only: %i[show edit update destroy]

  # GET /reels or /reels.json
  def index
    @reels = Reel.all
  end

  # GET /reels/1 or /reels/1.json
  def show; end

  # GET /reels/new
  def new
    @reel = Reel.new
  end

  # GET /reels/1/edit
  def edit; end

  # POST /reels or /reels.json
  def create
    @reel = Reel.new(reel_params)

    respond_to do |format|
      if @reel.save
        format.html { redirect_to reel_url(@reel), notice: 'Reel was successfully created.' }
        format.json { render :show, status: :created, location: @reel }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @reel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reels/1 or /reels/1.json
  def update
    respond_to do |format|
      if @reel.update(reel_params)
        format.html { redirect_to reel_url(@reel), notice: 'Reel was successfully updated.' }
        format.json { render :show, status: :ok, location: @reel }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @reel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reels/1 or /reels/1.json
  def destroy
    @reel.destroy

    respond_to do |format|
      format.html { redirect_to reels_url, notice: 'Reel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_reel
    @reel = Reel.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def reel_params
    params.fetch(:reel, {})
  end
end
