class ChucDanhDaQuyHoachesController < ApplicationController
  before_action :set_chuc_danh_da_quy_hoach, only: [:show, :edit, :update, :destroy]

  # GET /chuc_danh_da_quy_hoaches
  # GET /chuc_danh_da_quy_hoaches.json
  def index
    @chuc_danh_da_quy_hoaches = ChucDanhDaQuyHoach.all
  end

  # GET /chuc_danh_da_quy_hoaches/1
  # GET /chuc_danh_da_quy_hoaches/1.json
  def show
  end

  # GET /chuc_danh_da_quy_hoaches/new
  def new
    @chuc_danh_da_quy_hoach = ChucDanhDaQuyHoach.new
  end

  # GET /chuc_danh_da_quy_hoaches/1/edit
  def edit
  end

  # POST /chuc_danh_da_quy_hoaches
  # POST /chuc_danh_da_quy_hoaches.json
  def create
    @chuc_danh_da_quy_hoach = ChucDanhDaQuyHoach.new(chuc_danh_da_quy_hoach_params)

    respond_to do |format|
      if @chuc_danh_da_quy_hoach.save
        format.html { redirect_to @chuc_danh_da_quy_hoach, notice: 'Chuc danh da quy hoach was successfully created.' }
        format.json { render :show, status: :created, location: @chuc_danh_da_quy_hoach }
      else
        format.html { render :new }
        format.json { render json: @chuc_danh_da_quy_hoach.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chuc_danh_da_quy_hoaches/1
  # PATCH/PUT /chuc_danh_da_quy_hoaches/1.json
  def update
    respond_to do |format|
      if @chuc_danh_da_quy_hoach.update(chuc_danh_da_quy_hoach_params)
        format.html { redirect_to @chuc_danh_da_quy_hoach, notice: 'Chuc danh da quy hoach was successfully updated.' }
        format.json { render :show, status: :ok, location: @chuc_danh_da_quy_hoach }
      else
        format.html { render :edit }
        format.json { render json: @chuc_danh_da_quy_hoach.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chuc_danh_da_quy_hoaches/1
  # DELETE /chuc_danh_da_quy_hoaches/1.json
  def destroy
    @chuc_danh_da_quy_hoach.destroy
    respond_to do |format|
      format.html { redirect_to chuc_danh_da_quy_hoaches_url, notice: 'Chuc danh da quy hoach was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chuc_danh_da_quy_hoach
      @chuc_danh_da_quy_hoach = ChucDanhDaQuyHoach.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def chuc_danh_da_quy_hoach_params
      params.require(:chuc_danh_da_quy_hoach).permit(:name, :description, :enabled)
    end
end
