class NgheNghiepHienNaysController < ApplicationController
  before_action :set_nghe_nghiep_hien_nay, only: [:show, :edit, :update, :destroy]

  # GET /nghe_nghiep_hien_nays
  # GET /nghe_nghiep_hien_nays.json
  def index
    @nghe_nghiep_hien_nays = NgheNghiepHienNay.all
  end

  # GET /nghe_nghiep_hien_nays/1
  # GET /nghe_nghiep_hien_nays/1.json
  def show
  end

  # GET /nghe_nghiep_hien_nays/new
  def new
    @nghe_nghiep_hien_nay = NgheNghiepHienNay.new
  end

  # GET /nghe_nghiep_hien_nays/1/edit
  def edit
  end

  # POST /nghe_nghiep_hien_nays
  # POST /nghe_nghiep_hien_nays.json
  def create
    @nghe_nghiep_hien_nay = NgheNghiepHienNay.new(nghe_nghiep_hien_nay_params)

    respond_to do |format|
      if @nghe_nghiep_hien_nay.save
        format.html { redirect_to @nghe_nghiep_hien_nay, notice: 'Nghe nghiep hien nay was successfully created.' }
        format.json { render :show, status: :created, location: @nghe_nghiep_hien_nay }
      else
        format.html { render :new }
        format.json { render json: @nghe_nghiep_hien_nay.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nghe_nghiep_hien_nays/1
  # PATCH/PUT /nghe_nghiep_hien_nays/1.json
  def update
    respond_to do |format|
      if @nghe_nghiep_hien_nay.update(nghe_nghiep_hien_nay_params)
        format.html { redirect_to @nghe_nghiep_hien_nay, notice: 'Nghe nghiep hien nay was successfully updated.' }
        format.json { render :show, status: :ok, location: @nghe_nghiep_hien_nay }
      else
        format.html { render :edit }
        format.json { render json: @nghe_nghiep_hien_nay.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nghe_nghiep_hien_nays/1
  # DELETE /nghe_nghiep_hien_nays/1.json
  def destroy
    @nghe_nghiep_hien_nay.destroy
    respond_to do |format|
      format.html { redirect_to nghe_nghiep_hien_nays_url, notice: 'Nghe nghiep hien nay was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nghe_nghiep_hien_nay
      @nghe_nghiep_hien_nay = NgheNghiepHienNay.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def nghe_nghiep_hien_nay_params
      params.require(:nghe_nghiep_hien_nay).permit(:name, :enabled, :description)
    end
end
