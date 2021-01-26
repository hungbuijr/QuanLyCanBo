class BoiDuongNvcsgTsController < ApplicationController
  before_action :set_boi_duong_nvcsgt, only: [:show, :edit, :update, :destroy]

  # GET /boi_duong_nvcsgts
  # GET /boi_duong_nvcsgts.json
  def index
    @boi_duong_nvcsgts = BoiDuongNvcsgt.all
  end

  # GET /boi_duong_nvcsgts/1
  # GET /boi_duong_nvcsgts/1.json
  def show
  end

  # GET /boi_duong_nvcsgts/new
  def new
    @boi_duong_nvcsgt = BoiDuongNvcsgt.new
  end

  # GET /boi_duong_nvcsgts/1/edit
  def edit
  end

  # POST /boi_duong_nvcsgts
  # POST /boi_duong_nvcsgts.json
  def create
    @boi_duong_nvcsgt = BoiDuongNvcsgt.new(boi_duong_nvcsgt_params)

    respond_to do |format|
      if @boi_duong_nvcsgt.save
        format.html { redirect_to @boi_duong_nvcsgt, notice: 'Boi duong nvcsgt was successfully created.' }
        format.json { render :show, status: :created, location: @boi_duong_nvcsgt }
      else
        format.html { render :new }
        format.json { render json: @boi_duong_nvcsgt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /boi_duong_nvcsgts/1
  # PATCH/PUT /boi_duong_nvcsgts/1.json
  def update
    respond_to do |format|
      if @boi_duong_nvcsgt.update(boi_duong_nvcsgt_params)
        format.html { redirect_to @boi_duong_nvcsgt, notice: 'Boi duong nvcsgt was successfully updated.' }
        format.json { render :show, status: :ok, location: @boi_duong_nvcsgt }
      else
        format.html { render :edit }
        format.json { render json: @boi_duong_nvcsgt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /boi_duong_nvcsgts/1
  # DELETE /boi_duong_nvcsgts/1.json
  def destroy
    @boi_duong_nvcsgt.destroy
    respond_to do |format|
      format.html { redirect_to boi_duong_nvcsgts_url, notice: 'Boi duong nvcsgt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_boi_duong_nvcsgt
      @boi_duong_nvcsgt = BoiDuongNvcsgt.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def boi_duong_nvcsgt_params
      params.require(:boi_duong_nvcsgt).permit(:name, :description, :enabled)
    end
end
