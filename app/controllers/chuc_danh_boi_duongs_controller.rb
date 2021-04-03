class ChucDanhBoiDuongsController < ApplicationController
  before_action :set_chuc_danh_boi_duong, only: [:show, :edit, :update, :destroy]

  # GET /chuc_danh_boi_duongs
  # GET /chuc_danh_boi_duongs.json
  def index
    @chuc_danh_boi_duongs = ChucDanhBoiDuong.all
  end

  # GET /chuc_danh_boi_duongs/1
  # GET /chuc_danh_boi_duongs/1.json
  def show
  end

  # GET /chuc_danh_boi_duongs/new
  def new
    @chuc_danh_boi_duong = ChucDanhBoiDuong.new
  end

  # GET /chuc_danh_boi_duongs/1/edit
  def edit
  end

  # POST /chuc_danh_boi_duongs
  # POST /chuc_danh_boi_duongs.json
  def create
    @chuc_danh_boi_duong = ChucDanhBoiDuong.new(chuc_danh_boi_duong_params)

    respond_to do |format|
      if @chuc_danh_boi_duong.save
        format.html { redirect_to @chuc_danh_boi_duong, notice: 'Chuc danh boi duong was successfully created.' }
        format.json { render :show, status: :created, location: @chuc_danh_boi_duong }
      else
        format.html { render :new }
        format.json { render json: @chuc_danh_boi_duong.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chuc_danh_boi_duongs/1
  # PATCH/PUT /chuc_danh_boi_duongs/1.json
  def update
    respond_to do |format|
      if @chuc_danh_boi_duong.update(chuc_danh_boi_duong_params)
        format.html { redirect_to @chuc_danh_boi_duong, notice: 'Chuc danh boi duong was successfully updated.' }
        format.json { render :show, status: :ok, location: @chuc_danh_boi_duong }
      else
        format.html { render :edit }
        format.json { render json: @chuc_danh_boi_duong.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chuc_danh_boi_duongs/1
  # DELETE /chuc_danh_boi_duongs/1.json
  def destroy
    @chuc_danh_boi_duong.destroy
    respond_to do |format|
      format.html { redirect_to chuc_danh_boi_duongs_url, notice: 'Chuc danh boi duong was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chuc_danh_boi_duong
      @chuc_danh_boi_duong = ChucDanhBoiDuong.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def chuc_danh_boi_duong_params
      params.require(:chuc_danh_boi_duong).permit(:name, :description, :enabled)
    end
end
