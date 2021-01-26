class CapBacsController < ApplicationController
  before_action :set_cap_bac, only: [:show, :edit, :update, :destroy]

  # GET /cap_bacs
  # GET /cap_bacs.json
  def index
    @cap_bacs = CapBac.all
  end

  # GET /cap_bacs/1
  # GET /cap_bacs/1.json
  def show
  end

  # GET /cap_bacs/new
  def new
    @cap_bac = CapBac.new
  end

  # GET /cap_bacs/1/edit
  def edit
  end

  # POST /cap_bacs
  # POST /cap_bacs.json
  def create
    @cap_bac = CapBac.new(cap_bac_params)

    respond_to do |format|
      if @cap_bac.save
        format.html { redirect_to @cap_bac, notice: 'Cap bac was successfully created.' }
        format.json { render :show, status: :created, location: @cap_bac }
      else
        format.html { render :new }
        format.json { render json: @cap_bac.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cap_bacs/1
  # PATCH/PUT /cap_bacs/1.json
  def update
    respond_to do |format|
      if @cap_bac.update(cap_bac_params)
        format.html { redirect_to @cap_bac, notice: 'Cap bac was successfully updated.' }
        format.json { render :show, status: :ok, location: @cap_bac }
      else
        format.html { render :edit }
        format.json { render json: @cap_bac.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cap_bacs/1
  # DELETE /cap_bacs/1.json
  def destroy
    @cap_bac.destroy
    respond_to do |format|
      format.html { redirect_to cap_bacs_url, notice: 'Cap bac was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cap_bac
      @cap_bac = CapBac.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cap_bac_params
      params.require(:cap_bac).permit(:name, :description, :enabled)
    end
end
