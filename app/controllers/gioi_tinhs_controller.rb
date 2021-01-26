class GioiTinhsController < ApplicationController
  before_action :set_gioi_tinh, only: [:show, :edit, :update, :destroy]

  # GET /gioi_tinhs
  # GET /gioi_tinhs.json
  def index
    @gioi_tinhs = GioiTinh.all
  end

  # GET /gioi_tinhs/1
  # GET /gioi_tinhs/1.json
  def show
  end

  # GET /gioi_tinhs/new
  def new
    @gioi_tinh = GioiTinh.new
  end

  # GET /gioi_tinhs/1/edit
  def edit
  end

  # POST /gioi_tinhs
  # POST /gioi_tinhs.json
  def create
    @gioi_tinh = GioiTinh.new(gioi_tinh_params)

    respond_to do |format|
      if @gioi_tinh.save
        format.html { redirect_to @gioi_tinh, notice: 'Gioi tinh was successfully created.' }
        format.json { render :show, status: :created, location: @gioi_tinh }
      else
        format.html { render :new }
        format.json { render json: @gioi_tinh.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gioi_tinhs/1
  # PATCH/PUT /gioi_tinhs/1.json
  def update
    respond_to do |format|
      if @gioi_tinh.update(gioi_tinh_params)
        format.html { redirect_to @gioi_tinh, notice: 'Gioi tinh was successfully updated.' }
        format.json { render :show, status: :ok, location: @gioi_tinh }
      else
        format.html { render :edit }
        format.json { render json: @gioi_tinh.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gioi_tinhs/1
  # DELETE /gioi_tinhs/1.json
  def destroy
    @gioi_tinh.destroy
    respond_to do |format|
      format.html { redirect_to gioi_tinhs_url, notice: 'Gioi tinh was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gioi_tinh
      @gioi_tinh = GioiTinh.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def gioi_tinh_params
      params.require(:gioi_tinh).permit(:name, :enabled, :description)
    end
end
