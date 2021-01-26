class ChuyenNganhsController < ApplicationController
  before_action :set_chuyen_nganh, only: [:show, :edit, :update, :destroy]

  # GET /chuyen_nganhs
  # GET /chuyen_nganhs.json
  def index
    @chuyen_nganhs = ChuyenNganh.all
  end

  # GET /chuyen_nganhs/1
  # GET /chuyen_nganhs/1.json
  def show
  end

  # GET /chuyen_nganhs/new
  def new
    @chuyen_nganh = ChuyenNganh.new
  end

  # GET /chuyen_nganhs/1/edit
  def edit
  end

  # POST /chuyen_nganhs
  # POST /chuyen_nganhs.json
  def create
    @chuyen_nganh = ChuyenNganh.new(chuyen_nganh_params)

    respond_to do |format|
      if @chuyen_nganh.save
        format.html { redirect_to @chuyen_nganh, notice: 'Chuyen nganh was successfully created.' }
        format.json { render :show, status: :created, location: @chuyen_nganh }
      else
        format.html { render :new }
        format.json { render json: @chuyen_nganh.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chuyen_nganhs/1
  # PATCH/PUT /chuyen_nganhs/1.json
  def update
    respond_to do |format|
      if @chuyen_nganh.update(chuyen_nganh_params)
        format.html { redirect_to @chuyen_nganh, notice: 'Chuyen nganh was successfully updated.' }
        format.json { render :show, status: :ok, location: @chuyen_nganh }
      else
        format.html { render :edit }
        format.json { render json: @chuyen_nganh.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chuyen_nganhs/1
  # DELETE /chuyen_nganhs/1.json
  def destroy
    @chuyen_nganh.destroy
    respond_to do |format|
      format.html { redirect_to chuyen_nganhs_url, notice: 'Chuyen nganh was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chuyen_nganh
      @chuyen_nganh = ChuyenNganh.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def chuyen_nganh_params
      params.require(:chuyen_nganh).permit(:name, :description, :enabled)
    end
end
