class ChuyenMonNghiepVusController < ApplicationController
  before_action :set_chuyen_mon_nghiep_vu, only: [:show, :edit, :update, :destroy]

  # GET /chuyen_mon_nghiep_vus
  # GET /chuyen_mon_nghiep_vus.json
  def index
    @chuyen_mon_nghiep_vus = ChuyenMonNghiepVu.all
  end

  # GET /chuyen_mon_nghiep_vus/1
  # GET /chuyen_mon_nghiep_vus/1.json
  def show
  end

  # GET /chuyen_mon_nghiep_vus/new
  def new
    @chuyen_mon_nghiep_vu = ChuyenMonNghiepVu.new
  end

  # GET /chuyen_mon_nghiep_vus/1/edit
  def edit
  end

  # POST /chuyen_mon_nghiep_vus
  # POST /chuyen_mon_nghiep_vus.json
  def create
    @chuyen_mon_nghiep_vu = ChuyenMonNghiepVu.new(chuyen_mon_nghiep_vu_params)

    respond_to do |format|
      if @chuyen_mon_nghiep_vu.save
        format.html { redirect_to @chuyen_mon_nghiep_vu, notice: 'Chuyen mon nghiep vu was successfully created.' }
        format.json { render :show, status: :created, location: @chuyen_mon_nghiep_vu }
      else
        format.html { render :new }
        format.json { render json: @chuyen_mon_nghiep_vu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chuyen_mon_nghiep_vus/1
  # PATCH/PUT /chuyen_mon_nghiep_vus/1.json
  def update
    respond_to do |format|
      if @chuyen_mon_nghiep_vu.update(chuyen_mon_nghiep_vu_params)
        format.html { redirect_to @chuyen_mon_nghiep_vu, notice: 'Chuyen mon nghiep vu was successfully updated.' }
        format.json { render :show, status: :ok, location: @chuyen_mon_nghiep_vu }
      else
        format.html { render :edit }
        format.json { render json: @chuyen_mon_nghiep_vu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chuyen_mon_nghiep_vus/1
  # DELETE /chuyen_mon_nghiep_vus/1.json
  def destroy
    @chuyen_mon_nghiep_vu.destroy
    respond_to do |format|
      format.html { redirect_to chuyen_mon_nghiep_vus_url, notice: 'Chuyen mon nghiep vu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chuyen_mon_nghiep_vu
      @chuyen_mon_nghiep_vu = ChuyenMonNghiepVu.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def chuyen_mon_nghiep_vu_params
      params.require(:chuyen_mon_nghiep_vu).permit(:name, :enabled, :description)
    end
end
