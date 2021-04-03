class CanBosController < ApplicationController
  before_action :set_can_bo, only: [:show, :edit, :update, :destroy]

  # GET /can_bos
  # GET /can_bos.json
  def index
    @can_bos = CanBo.all
  end

  # GET /can_bos/1
  # GET /can_bos/1.json
  def show
  end

  # GET /can_bos/new
  def new
    @can_bo = CanBo.new
    @can_bo.bo_nhiems.build
    @can_bo.trinh_do_can_bos.build
    @can_bo.build_dang_vien
    @can_bo.build_tu_tran
  end

  # GET /can_bos/1/edit
  def edit
  end

  # POST /can_bos
  # POST /can_bos.json
  def create
    @can_bo = CanBo.new(can_bo_params)
debugger
    respond_to do |format|
      if @can_bo.save
        format.html { redirect_to @can_bo, notice: 'Can bo was successfully created.' }
        format.json { render :show, status: :created, location: @can_bo }
      else
        format.html { render :new }
        format.json { render json: @can_bo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /can_bos/1
  # PATCH/PUT /can_bos/1.json
  def update
    respond_to do |format|
      if @can_bo.update(can_bo_params)
        format.html { redirect_to @can_bo, notice: 'Can bo was successfully updated.' }
        format.json { render :show, status: :ok, location: @can_bo }
      else
        format.html { render :edit }
        format.json { render json: @can_bo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /can_bos/1
  # DELETE /can_bos/1.json
  def destroy
    @can_bo.destroy
    respond_to do |format|
      format.html { redirect_to can_bos_url, notice: 'Can bo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_can_bo
      @can_bo = CanBo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def can_bo_params
      params.require(:can_bo).permit(
        :name,
        :date_of_birth,
        :que_quan_id,
        :cap_bac_id,
        :chuc_vu_id,
        :chuc_danh_id,
        :dan_toc_id,
        :gioi_tinh_id,
        :ton_giao_id,
        :chuc_danh_quy_hoach_id,
        :chuc_danh_bo_nhiem_id,
        :trinh_do_van_hoa_id,
        :trinh_do_ly_luan_id,
        :chuyen_mon_nghiep_vu_id,
        :chuyen_nganh_id,
        :ngoai_ngu_id,
        :nghe_nghiep_truoc_khi_vao_dang_id,
        :nghe_nghiep_hien_nay_id,
        :tom_tat_qua_trinh_cong_tac,
        :ngay_vao_nganh,
        bo_nhiems_attributes: [:id, :so_quyet_dinh, :ngay_cap, :chuc_danh_id],
        trinh_do_can_bos_attributes: [:trinh_do_id, :cap_do],
        dang_vien_attributes: [
          :so_the_dang,
          :ngay_vao_dang,
          :ngay_chinh_thuc,
          :bo_doi_cong_an_huu_tri,
          :ngay_chuyen_di,
          :chuyen_den_dang_bo,
          :ngay_chuyen_den,
          :chuyen_tu_dang_bo,
          :ngay_ra_khoi_dang,
          :hinh_thuc_ra_dang,
          :ghi_chu
        ],
        tu_tran_attributes: [:ngay_tu_tran, :ly_do]
      )
    end
end
