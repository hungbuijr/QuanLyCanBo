class RaKhoiDangsController < ApplicationController
  before_action :set_ra_khoi_dang, only: [:show, :edit, :update, :destroy]

  # GET /ra_khoi_dangs
  # GET /ra_khoi_dangs.json
  def index
    @ra_khoi_dangs = RaKhoiDang.all
  end

  # GET /ra_khoi_dangs/1
  # GET /ra_khoi_dangs/1.json
  def show
  end

  # GET /ra_khoi_dangs/new
  def new
    @ra_khoi_dang = RaKhoiDang.new
  end

  # GET /ra_khoi_dangs/1/edit
  def edit
  end

  # POST /ra_khoi_dangs
  # POST /ra_khoi_dangs.json
  def create
    @ra_khoi_dang = RaKhoiDang.new(ra_khoi_dang_params)

    respond_to do |format|
      if @ra_khoi_dang.save
        format.html { redirect_to @ra_khoi_dang, notice: 'Ra khoi dang was successfully created.' }
        format.json { render :show, status: :created, location: @ra_khoi_dang }
      else
        format.html { render :new }
        format.json { render json: @ra_khoi_dang.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ra_khoi_dangs/1
  # PATCH/PUT /ra_khoi_dangs/1.json
  def update
    respond_to do |format|
      if @ra_khoi_dang.update(ra_khoi_dang_params)
        format.html { redirect_to @ra_khoi_dang, notice: 'Ra khoi dang was successfully updated.' }
        format.json { render :show, status: :ok, location: @ra_khoi_dang }
      else
        format.html { render :edit }
        format.json { render json: @ra_khoi_dang.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ra_khoi_dangs/1
  # DELETE /ra_khoi_dangs/1.json
  def destroy
    @ra_khoi_dang.destroy
    respond_to do |format|
      format.html { redirect_to ra_khoi_dangs_url, notice: 'Ra khoi dang was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ra_khoi_dang
      @ra_khoi_dang = RaKhoiDang.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ra_khoi_dang_params
      params.require(:ra_khoi_dang).permit(:name, :description, :enabled, :ngay_ra_khoi_dang, :hinh_thuc_ra_khoi_dang)
    end
end
