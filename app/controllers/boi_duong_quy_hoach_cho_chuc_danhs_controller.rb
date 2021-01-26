class BoiDuongQuyHoachChoChucDanhsController < ApplicationController
  before_action :set_boi_duong_quy_hoach_cho_chuc_danh, only: [:show, :edit, :update, :destroy]

  # GET /boi_duong_quy_hoach_cho_chuc_danhs
  # GET /boi_duong_quy_hoach_cho_chuc_danhs.json
  def index
    @boi_duong_quy_hoach_cho_chuc_danhs = BoiDuongQuyHoachChoChucDanh.all
  end

  # GET /boi_duong_quy_hoach_cho_chuc_danhs/1
  # GET /boi_duong_quy_hoach_cho_chuc_danhs/1.json
  def show
  end

  # GET /boi_duong_quy_hoach_cho_chuc_danhs/new
  def new
    @boi_duong_quy_hoach_cho_chuc_danh = BoiDuongQuyHoachChoChucDanh.new
  end

  # GET /boi_duong_quy_hoach_cho_chuc_danhs/1/edit
  def edit
  end

  # POST /boi_duong_quy_hoach_cho_chuc_danhs
  # POST /boi_duong_quy_hoach_cho_chuc_danhs.json
  def create
    @boi_duong_quy_hoach_cho_chuc_danh = BoiDuongQuyHoachChoChucDanh.new(boi_duong_quy_hoach_cho_chuc_danh_params)

    respond_to do |format|
      if @boi_duong_quy_hoach_cho_chuc_danh.save
        format.html { redirect_to @boi_duong_quy_hoach_cho_chuc_danh, notice: 'Boi duong quy hoach cho chuc danh was successfully created.' }
        format.json { render :show, status: :created, location: @boi_duong_quy_hoach_cho_chuc_danh }
      else
        format.html { render :new }
        format.json { render json: @boi_duong_quy_hoach_cho_chuc_danh.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /boi_duong_quy_hoach_cho_chuc_danhs/1
  # PATCH/PUT /boi_duong_quy_hoach_cho_chuc_danhs/1.json
  def update
    respond_to do |format|
      if @boi_duong_quy_hoach_cho_chuc_danh.update(boi_duong_quy_hoach_cho_chuc_danh_params)
        format.html { redirect_to @boi_duong_quy_hoach_cho_chuc_danh, notice: 'Boi duong quy hoach cho chuc danh was successfully updated.' }
        format.json { render :show, status: :ok, location: @boi_duong_quy_hoach_cho_chuc_danh }
      else
        format.html { render :edit }
        format.json { render json: @boi_duong_quy_hoach_cho_chuc_danh.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /boi_duong_quy_hoach_cho_chuc_danhs/1
  # DELETE /boi_duong_quy_hoach_cho_chuc_danhs/1.json
  def destroy
    @boi_duong_quy_hoach_cho_chuc_danh.destroy
    respond_to do |format|
      format.html { redirect_to boi_duong_quy_hoach_cho_chuc_danhs_url, notice: 'Boi duong quy hoach cho chuc danh was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_boi_duong_quy_hoach_cho_chuc_danh
      @boi_duong_quy_hoach_cho_chuc_danh = BoiDuongQuyHoachChoChucDanh.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def boi_duong_quy_hoach_cho_chuc_danh_params
      params.require(:boi_duong_quy_hoach_cho_chuc_danh).permit(:name, :description, :enabled)
    end
end
