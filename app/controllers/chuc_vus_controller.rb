class ChucVusController < ApplicationController
  before_action :set_chuc_vu, only: [:show, :edit, :update, :destroy]

  # GET /chuc_vus
  # GET /chuc_vus.json
  def index
    @chuc_vus = ChucVu.all
  end

  # GET /chuc_vus/1
  # GET /chuc_vus/1.json
  def show
  end

  # GET /chuc_vus/new
  def new
    @chuc_vu = ChucVu.new
  end

  # GET /chuc_vus/1/edit
  def edit
  end

  # POST /chuc_vus
  # POST /chuc_vus.json
  def create
    @chuc_vu = ChucVu.new(chuc_vu_params)

    respond_to do |format|
      if @chuc_vu.save
        format.html { redirect_to @chuc_vu, notice: 'Chuc vu was successfully created.' }
        format.json { render :show, status: :created, location: @chuc_vu }
      else
        format.html { render :new }
        format.json { render json: @chuc_vu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chuc_vus/1
  # PATCH/PUT /chuc_vus/1.json
  def update
    respond_to do |format|
      if @chuc_vu.update(chuc_vu_params)
        format.html { redirect_to @chuc_vu, notice: 'Chuc vu was successfully updated.' }
        format.json { render :show, status: :ok, location: @chuc_vu }
      else
        format.html { render :edit }
        format.json { render json: @chuc_vu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chuc_vus/1
  # DELETE /chuc_vus/1.json
  def destroy
    @chuc_vu.destroy
    respond_to do |format|
      format.html { redirect_to chuc_vus_url, notice: 'Chuc vu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chuc_vu
      @chuc_vu = ChucVu.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def chuc_vu_params
      params.require(:chuc_vu).permit(:name, :description, :enabled)
    end
end
