class TuTransController < ApplicationController
  before_action :set_tu_tran, only: [:show, :edit, :update, :destroy]

  # GET /tu_trans
  # GET /tu_trans.json
  def index
    @tu_trans = TuTran.all
  end

  # GET /tu_trans/1
  # GET /tu_trans/1.json
  def show
  end

  # GET /tu_trans/new
  def new
    @tu_tran = TuTran.new
  end

  # GET /tu_trans/1/edit
  def edit
  end

  # POST /tu_trans
  # POST /tu_trans.json
  def create
    @tu_tran = TuTran.new(tu_tran_params)

    respond_to do |format|
      if @tu_tran.save
        format.html { redirect_to @tu_tran, notice: 'Tu tran was successfully created.' }
        format.json { render :show, status: :created, location: @tu_tran }
      else
        format.html { render :new }
        format.json { render json: @tu_tran.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tu_trans/1
  # PATCH/PUT /tu_trans/1.json
  def update
    respond_to do |format|
      if @tu_tran.update(tu_tran_params)
        format.html { redirect_to @tu_tran, notice: 'Tu tran was successfully updated.' }
        format.json { render :show, status: :ok, location: @tu_tran }
      else
        format.html { render :edit }
        format.json { render json: @tu_tran.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tu_trans/1
  # DELETE /tu_trans/1.json
  def destroy
    @tu_tran.destroy
    respond_to do |format|
      format.html { redirect_to tu_trans_url, notice: 'Tu tran was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tu_tran
      @tu_tran = TuTran.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tu_tran_params
      params.require(:tu_tran).permit(:name, :description, :ly_do, :ngay_tu_tran, :enabled)
    end
end
