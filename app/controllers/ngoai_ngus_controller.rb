class NgoaiNgusController < ApplicationController
  before_action :set_ngoai_ngu, only: [:show, :edit, :update, :destroy]

  # GET /ngoai_ngus
  # GET /ngoai_ngus.json
  def index
    @ngoai_ngus = NgoaiNgu.all
  end

  # GET /ngoai_ngus/1
  # GET /ngoai_ngus/1.json
  def show
  end

  # GET /ngoai_ngus/new
  def new
    @ngoai_ngu = NgoaiNgu.new
  end

  # GET /ngoai_ngus/1/edit
  def edit
  end

  # POST /ngoai_ngus
  # POST /ngoai_ngus.json
  def create
    @ngoai_ngu = NgoaiNgu.new(ngoai_ngu_params)

    respond_to do |format|
      if @ngoai_ngu.save
        format.html { redirect_to @ngoai_ngu, notice: 'Ngoai ngu was successfully created.' }
        format.json { render :show, status: :created, location: @ngoai_ngu }
      else
        format.html { render :new }
        format.json { render json: @ngoai_ngu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ngoai_ngus/1
  # PATCH/PUT /ngoai_ngus/1.json
  def update
    respond_to do |format|
      if @ngoai_ngu.update(ngoai_ngu_params)
        format.html { redirect_to @ngoai_ngu, notice: 'Ngoai ngu was successfully updated.' }
        format.json { render :show, status: :ok, location: @ngoai_ngu }
      else
        format.html { render :edit }
        format.json { render json: @ngoai_ngu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ngoai_ngus/1
  # DELETE /ngoai_ngus/1.json
  def destroy
    @ngoai_ngu.destroy
    respond_to do |format|
      format.html { redirect_to ngoai_ngus_url, notice: 'Ngoai ngu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ngoai_ngu
      @ngoai_ngu = NgoaiNgu.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ngoai_ngu_params
      params.require(:ngoai_ngu).permit(:name, :description, :enabled, :cap_do)
    end
end
