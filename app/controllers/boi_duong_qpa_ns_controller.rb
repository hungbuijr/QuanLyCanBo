class BoiDuongQpaNsController < ApplicationController
  before_action :set_boi_duong_qpan, only: [:show, :edit, :update, :destroy]

  # GET /boi_duong_qpans
  # GET /boi_duong_qpans.json
  def index
    @boi_duong_qpans = BoiDuongQpan.all
  end

  # GET /boi_duong_qpans/1
  # GET /boi_duong_qpans/1.json
  def show
  end

  # GET /boi_duong_qpans/new
  def new
    @boi_duong_qpan = BoiDuongQpan.new
  end

  # GET /boi_duong_qpans/1/edit
  def edit
  end

  # POST /boi_duong_qpans
  # POST /boi_duong_qpans.json
  def create
    @boi_duong_qpan = BoiDuongQpan.new(boi_duong_qpan_params)

    respond_to do |format|
      if @boi_duong_qpan.save
        format.html { redirect_to @boi_duong_qpan, notice: 'Boi duong qpan was successfully created.' }
        format.json { render :show, status: :created, location: @boi_duong_qpan }
      else
        format.html { render :new }
        format.json { render json: @boi_duong_qpan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /boi_duong_qpans/1
  # PATCH/PUT /boi_duong_qpans/1.json
  def update
    respond_to do |format|
      if @boi_duong_qpan.update(boi_duong_qpan_params)
        format.html { redirect_to @boi_duong_qpan, notice: 'Boi duong qpan was successfully updated.' }
        format.json { render :show, status: :ok, location: @boi_duong_qpan }
      else
        format.html { render :edit }
        format.json { render json: @boi_duong_qpan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /boi_duong_qpans/1
  # DELETE /boi_duong_qpans/1.json
  def destroy
    @boi_duong_qpan.destroy
    respond_to do |format|
      format.html { redirect_to boi_duong_qpans_url, notice: 'Boi duong qpan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_boi_duong_qpan
      @boi_duong_qpan = BoiDuongQpan.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def boi_duong_qpan_params
      params.require(:boi_duong_qpan).permit(:name, :description, :enabled)
    end
end
