class ChuyenDenDangBoKhacsController < ApplicationController
  before_action :set_chuyen_den_dang_bo_khac, only: [:show, :edit, :update, :destroy]

  # GET /chuyen_den_dang_bo_khacs
  # GET /chuyen_den_dang_bo_khacs.json
  def index
    @chuyen_den_dang_bo_khacs = ChuyenDenDangBoKhac.all
  end

  # GET /chuyen_den_dang_bo_khacs/1
  # GET /chuyen_den_dang_bo_khacs/1.json
  def show
  end

  # GET /chuyen_den_dang_bo_khacs/new
  def new
    @chuyen_den_dang_bo_khac = ChuyenDenDangBoKhac.new
  end

  # GET /chuyen_den_dang_bo_khacs/1/edit
  def edit
  end

  # POST /chuyen_den_dang_bo_khacs
  # POST /chuyen_den_dang_bo_khacs.json
  def create
    @chuyen_den_dang_bo_khac = ChuyenDenDangBoKhac.new(chuyen_den_dang_bo_khac_params)

    respond_to do |format|
      if @chuyen_den_dang_bo_khac.save
        format.html { redirect_to @chuyen_den_dang_bo_khac, notice: 'Chuyen den dang bo khac was successfully created.' }
        format.json { render :show, status: :created, location: @chuyen_den_dang_bo_khac }
      else
        format.html { render :new }
        format.json { render json: @chuyen_den_dang_bo_khac.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chuyen_den_dang_bo_khacs/1
  # PATCH/PUT /chuyen_den_dang_bo_khacs/1.json
  def update
    respond_to do |format|
      if @chuyen_den_dang_bo_khac.update(chuyen_den_dang_bo_khac_params)
        format.html { redirect_to @chuyen_den_dang_bo_khac, notice: 'Chuyen den dang bo khac was successfully updated.' }
        format.json { render :show, status: :ok, location: @chuyen_den_dang_bo_khac }
      else
        format.html { render :edit }
        format.json { render json: @chuyen_den_dang_bo_khac.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chuyen_den_dang_bo_khacs/1
  # DELETE /chuyen_den_dang_bo_khacs/1.json
  def destroy
    @chuyen_den_dang_bo_khac.destroy
    respond_to do |format|
      format.html { redirect_to chuyen_den_dang_bo_khacs_url, notice: 'Chuyen den dang bo khac was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chuyen_den_dang_bo_khac
      @chuyen_den_dang_bo_khac = ChuyenDenDangBoKhac.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def chuyen_den_dang_bo_khac_params
      params.require(:chuyen_den_dang_bo_khac).permit(:name, :description, :ngay_chuyen_di, :enabled)
    end
end
