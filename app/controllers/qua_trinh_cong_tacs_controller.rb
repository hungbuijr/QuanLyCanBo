class QuaTrinhCongTacsController < ApplicationController
  before_action :set_qua_trinh_cong_tac, only: [:show, :edit, :update, :destroy]

  # GET /qua_trinh_cong_tacs
  # GET /qua_trinh_cong_tacs.json
  def index
    @qua_trinh_cong_tacs = QuaTrinhCongTac.all
  end

  # GET /qua_trinh_cong_tacs/1
  # GET /qua_trinh_cong_tacs/1.json
  def show
  end

  # GET /qua_trinh_cong_tacs/new
  def new
    @qua_trinh_cong_tac = QuaTrinhCongTac.new
  end

  # GET /qua_trinh_cong_tacs/1/edit
  def edit
  end

  # POST /qua_trinh_cong_tacs
  # POST /qua_trinh_cong_tacs.json
  def create
    @qua_trinh_cong_tac = QuaTrinhCongTac.new(qua_trinh_cong_tac_params)

    respond_to do |format|
      if @qua_trinh_cong_tac.save
        format.html { redirect_to @qua_trinh_cong_tac, notice: 'Qua trinh cong tac was successfully created.' }
        format.json { render :show, status: :created, location: @qua_trinh_cong_tac }
      else
        format.html { render :new }
        format.json { render json: @qua_trinh_cong_tac.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /qua_trinh_cong_tacs/1
  # PATCH/PUT /qua_trinh_cong_tacs/1.json
  def update
    respond_to do |format|
      if @qua_trinh_cong_tac.update(qua_trinh_cong_tac_params)
        format.html { redirect_to @qua_trinh_cong_tac, notice: 'Qua trinh cong tac was successfully updated.' }
        format.json { render :show, status: :ok, location: @qua_trinh_cong_tac }
      else
        format.html { render :edit }
        format.json { render json: @qua_trinh_cong_tac.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /qua_trinh_cong_tacs/1
  # DELETE /qua_trinh_cong_tacs/1.json
  def destroy
    @qua_trinh_cong_tac.destroy
    respond_to do |format|
      format.html { redirect_to qua_trinh_cong_tacs_url, notice: 'Qua trinh cong tac was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_qua_trinh_cong_tac
      @qua_trinh_cong_tac = QuaTrinhCongTac.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def qua_trinh_cong_tac_params
      params.require(:qua_trinh_cong_tac).permit(:name, :description, :enabled)
    end
end
