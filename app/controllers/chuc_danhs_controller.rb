class ChucDanhsController < ApplicationController
  before_action :set_chuc_danh, only: [:show, :edit, :update, :destroy]

  # GET /chuc_danhs
  # GET /chuc_danhs.json
  def index
    @chuc_danhs = ChucDanh.all
  end

  # GET /chuc_danhs/1
  # GET /chuc_danhs/1.json
  def show
  end

  # GET /chuc_danhs/new
  def new
    @chuc_danh = ChucDanh.new
  end

  # GET /chuc_danhs/1/edit
  def edit
  end

  # POST /chuc_danhs
  # POST /chuc_danhs.json
  def create
    @chuc_danh = ChucDanh.new(chuc_danh_params)

    respond_to do |format|
      if @chuc_danh.save
        format.html { redirect_to @chuc_danh, notice: 'Chuc danh was successfully created.' }
        format.json { render :show, status: :created, location: @chuc_danh }
      else
        format.html { render :new }
        format.json { render json: @chuc_danh.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chuc_danhs/1
  # PATCH/PUT /chuc_danhs/1.json
  def update
    respond_to do |format|
      if @chuc_danh.update(chuc_danh_params)
        format.html { redirect_to @chuc_danh, notice: 'Chuc danh was successfully updated.' }
        format.json { render :show, status: :ok, location: @chuc_danh }
      else
        format.html { render :edit }
        format.json { render json: @chuc_danh.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chuc_danhs/1
  # DELETE /chuc_danhs/1.json
  def destroy
    @chuc_danh.destroy
    respond_to do |format|
      format.html { redirect_to chuc_danhs_url, notice: 'Chuc danh was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chuc_danh
      @chuc_danh = ChucDanh.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def chuc_danh_params
      params.require(:chuc_danh).permit(:name, :description, :enabled)
    end
end
