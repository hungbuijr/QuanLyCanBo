class ChuyenTuDangBoKhacDensController < ApplicationController
  before_action :set_chuyen_tu_dang_bo_khac_den, only: [:show, :edit, :update, :destroy]

  # GET /chuyen_tu_dang_bo_khac_dens
  # GET /chuyen_tu_dang_bo_khac_dens.json
  def index
    @chuyen_tu_dang_bo_khac_dens = ChuyenTuDangBoKhacDen.all
  end

  # GET /chuyen_tu_dang_bo_khac_dens/1
  # GET /chuyen_tu_dang_bo_khac_dens/1.json
  def show
  end

  # GET /chuyen_tu_dang_bo_khac_dens/new
  def new
    @chuyen_tu_dang_bo_khac_den = ChuyenTuDangBoKhacDen.new
  end

  # GET /chuyen_tu_dang_bo_khac_dens/1/edit
  def edit
  end

  # POST /chuyen_tu_dang_bo_khac_dens
  # POST /chuyen_tu_dang_bo_khac_dens.json
  def create
    @chuyen_tu_dang_bo_khac_den = ChuyenTuDangBoKhacDen.new(chuyen_tu_dang_bo_khac_den_params)

    respond_to do |format|
      if @chuyen_tu_dang_bo_khac_den.save
        format.html { redirect_to @chuyen_tu_dang_bo_khac_den, notice: 'Chuyen tu dang bo khac den was successfully created.' }
        format.json { render :show, status: :created, location: @chuyen_tu_dang_bo_khac_den }
      else
        format.html { render :new }
        format.json { render json: @chuyen_tu_dang_bo_khac_den.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chuyen_tu_dang_bo_khac_dens/1
  # PATCH/PUT /chuyen_tu_dang_bo_khac_dens/1.json
  def update
    respond_to do |format|
      if @chuyen_tu_dang_bo_khac_den.update(chuyen_tu_dang_bo_khac_den_params)
        format.html { redirect_to @chuyen_tu_dang_bo_khac_den, notice: 'Chuyen tu dang bo khac den was successfully updated.' }
        format.json { render :show, status: :ok, location: @chuyen_tu_dang_bo_khac_den }
      else
        format.html { render :edit }
        format.json { render json: @chuyen_tu_dang_bo_khac_den.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chuyen_tu_dang_bo_khac_dens/1
  # DELETE /chuyen_tu_dang_bo_khac_dens/1.json
  def destroy
    @chuyen_tu_dang_bo_khac_den.destroy
    respond_to do |format|
      format.html { redirect_to chuyen_tu_dang_bo_khac_dens_url, notice: 'Chuyen tu dang bo khac den was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chuyen_tu_dang_bo_khac_den
      @chuyen_tu_dang_bo_khac_den = ChuyenTuDangBoKhacDen.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def chuyen_tu_dang_bo_khac_den_params
      params.require(:chuyen_tu_dang_bo_khac_den).permit(:name, :description, :ngay_chuyen_den, :enabled)
    end
end
