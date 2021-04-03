class NgheNghiepsController < ApplicationController
  before_action :set_nghe_nghiep, only: [:show, :edit, :update, :destroy]

  # GET /nghe_nghieps
  # GET /nghe_nghieps.json
  def index
    @nghe_nghieps = NgheNghiep.all
  end

  # GET /nghe_nghieps/1
  # GET /nghe_nghieps/1.json
  def show
  end

  # GET /nghe_nghieps/new
  def new
    @nghe_nghiep = NgheNghiep.new
  end

  # GET /nghe_nghieps/1/edit
  def edit
  end

  # POST /nghe_nghieps
  # POST /nghe_nghieps.json
  def create
    @nghe_nghiep = NgheNghiep.new(nghe_nghiep_params)

    respond_to do |format|
      if @nghe_nghiep.save
        format.html { redirect_to @nghe_nghiep, notice: 'Nghe nghiep was successfully created.' }
        format.json { render :show, status: :created, location: @nghe_nghiep }
      else
        format.html { render :new }
        format.json { render json: @nghe_nghiep.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nghe_nghieps/1
  # PATCH/PUT /nghe_nghieps/1.json
  def update
    respond_to do |format|
      if @nghe_nghiep.update(nghe_nghiep_params)
        format.html { redirect_to @nghe_nghiep, notice: 'Nghe nghiep was successfully updated.' }
        format.json { render :show, status: :ok, location: @nghe_nghiep }
      else
        format.html { render :edit }
        format.json { render json: @nghe_nghiep.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nghe_nghieps/1
  # DELETE /nghe_nghieps/1.json
  def destroy
    @nghe_nghiep.destroy
    respond_to do |format|
      format.html { redirect_to nghe_nghieps_url, notice: 'Nghe nghiep was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nghe_nghiep
      @nghe_nghiep = NgheNghiep.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def nghe_nghiep_params
      params.require(:nghe_nghiep).permit(:name, :description)
    end
end
