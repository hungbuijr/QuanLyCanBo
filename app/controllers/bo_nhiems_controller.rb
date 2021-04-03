class BoNhiemsController < ApplicationController
  before_action :set_bo_nhiem, only: [:show, :edit, :update, :destroy]

  # GET /bo_nhiems
  # GET /bo_nhiems.json
  def index
    @bo_nhiems = BoNhiem.all
  end

  # GET /bo_nhiems/1
  # GET /bo_nhiems/1.json
  def show
  end

  # GET /bo_nhiems/new
  def new
    @bo_nhiem = BoNhiem.new
  end

  # GET /bo_nhiems/1/edit
  def edit
  end

  # POST /bo_nhiems
  # POST /bo_nhiems.json
  def create
    @bo_nhiem = BoNhiem.new(bo_nhiem_params)

    respond_to do |format|
      if @bo_nhiem.save
        format.html { redirect_to @bo_nhiem, notice: 'Bo nhiem was successfully created.' }
        format.json { render :show, status: :created, location: @bo_nhiem }
      else
        format.html { render :new }
        format.json { render json: @bo_nhiem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bo_nhiems/1
  # PATCH/PUT /bo_nhiems/1.json
  def update
    respond_to do |format|
      if @bo_nhiem.update(bo_nhiem_params)
        format.html { redirect_to @bo_nhiem, notice: 'Bo nhiem was successfully updated.' }
        format.json { render :show, status: :ok, location: @bo_nhiem }
      else
        format.html { render :edit }
        format.json { render json: @bo_nhiem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bo_nhiems/1
  # DELETE /bo_nhiems/1.json
  def destroy
    @bo_nhiem.destroy
    respond_to do |format|
      format.html { redirect_to bo_nhiems_url, notice: 'Bo nhiem was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bo_nhiem
      @bo_nhiem = BoNhiem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bo_nhiem_params
      params.fetch(:bo_nhiem, {})
    end
end
