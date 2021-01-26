class NgheNghiepTruocKhiVaoDangsController < ApplicationController
  before_action :set_nghe_nghiep_truoc_khi_vao_dang, only: [:show, :edit, :update, :destroy]

  # GET /nghe_nghiep_truoc_khi_vao_dangs
  # GET /nghe_nghiep_truoc_khi_vao_dangs.json
  def index
    @nghe_nghiep_truoc_khi_vao_dangs = NgheNghiepTruocKhiVaoDang.all
  end

  # GET /nghe_nghiep_truoc_khi_vao_dangs/1
  # GET /nghe_nghiep_truoc_khi_vao_dangs/1.json
  def show
  end

  # GET /nghe_nghiep_truoc_khi_vao_dangs/new
  def new
    @nghe_nghiep_truoc_khi_vao_dang = NgheNghiepTruocKhiVaoDang.new
  end

  # GET /nghe_nghiep_truoc_khi_vao_dangs/1/edit
  def edit
  end

  # POST /nghe_nghiep_truoc_khi_vao_dangs
  # POST /nghe_nghiep_truoc_khi_vao_dangs.json
  def create
    @nghe_nghiep_truoc_khi_vao_dang = NgheNghiepTruocKhiVaoDang.new(nghe_nghiep_truoc_khi_vao_dang_params)

    respond_to do |format|
      if @nghe_nghiep_truoc_khi_vao_dang.save
        format.html { redirect_to @nghe_nghiep_truoc_khi_vao_dang, notice: 'Nghe nghiep truoc khi vao dang was successfully created.' }
        format.json { render :show, status: :created, location: @nghe_nghiep_truoc_khi_vao_dang }
      else
        format.html { render :new }
        format.json { render json: @nghe_nghiep_truoc_khi_vao_dang.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nghe_nghiep_truoc_khi_vao_dangs/1
  # PATCH/PUT /nghe_nghiep_truoc_khi_vao_dangs/1.json
  def update
    respond_to do |format|
      if @nghe_nghiep_truoc_khi_vao_dang.update(nghe_nghiep_truoc_khi_vao_dang_params)
        format.html { redirect_to @nghe_nghiep_truoc_khi_vao_dang, notice: 'Nghe nghiep truoc khi vao dang was successfully updated.' }
        format.json { render :show, status: :ok, location: @nghe_nghiep_truoc_khi_vao_dang }
      else
        format.html { render :edit }
        format.json { render json: @nghe_nghiep_truoc_khi_vao_dang.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nghe_nghiep_truoc_khi_vao_dangs/1
  # DELETE /nghe_nghiep_truoc_khi_vao_dangs/1.json
  def destroy
    @nghe_nghiep_truoc_khi_vao_dang.destroy
    respond_to do |format|
      format.html { redirect_to nghe_nghiep_truoc_khi_vao_dangs_url, notice: 'Nghe nghiep truoc khi vao dang was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nghe_nghiep_truoc_khi_vao_dang
      @nghe_nghiep_truoc_khi_vao_dang = NgheNghiepTruocKhiVaoDang.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def nghe_nghiep_truoc_khi_vao_dang_params
      params.require(:nghe_nghiep_truoc_khi_vao_dang).permit(:name, :enabled, :description)
    end
end
