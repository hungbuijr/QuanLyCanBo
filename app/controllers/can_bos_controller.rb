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
  end

  # GET /can_bos/1/edit
  def edit
  end

  # POST /can_bos
  # POST /can_bos.json
  def create
    @can_bo = CanBo.new(can_bo_params)

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
      params.require(:can_bo).permit(:name, :date_of_birth)
    end
end
