class TonGiaosController < ApplicationController
  before_action :set_ton_giao, only: [:show, :edit, :update, :destroy]

  # GET /ton_giaos
  # GET /ton_giaos.json
  def index
    @ton_giaos = TonGiao.all
  end

  # GET /ton_giaos/1
  # GET /ton_giaos/1.json
  def show
  end

  # GET /ton_giaos/new
  def new
    @ton_giao = TonGiao.new
  end

  # GET /ton_giaos/1/edit
  def edit
  end

  # POST /ton_giaos
  # POST /ton_giaos.json
  def create
    @ton_giao = TonGiao.new(ton_giao_params)

    respond_to do |format|
      if @ton_giao.save
        format.html { redirect_to @ton_giao, notice: 'Ton giao was successfully created.' }
        format.json { render :show, status: :created, location: @ton_giao }
      else
        format.html { render :new }
        format.json { render json: @ton_giao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ton_giaos/1
  # PATCH/PUT /ton_giaos/1.json
  def update
    respond_to do |format|
      if @ton_giao.update(ton_giao_params)
        format.html { redirect_to @ton_giao, notice: 'Ton giao was successfully updated.' }
        format.json { render :show, status: :ok, location: @ton_giao }
      else
        format.html { render :edit }
        format.json { render json: @ton_giao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ton_giaos/1
  # DELETE /ton_giaos/1.json
  def destroy
    @ton_giao.destroy
    respond_to do |format|
      format.html { redirect_to ton_giaos_url, notice: 'Ton giao was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ton_giao
      @ton_giao = TonGiao.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ton_giao_params
      params.require(:ton_giao).permit(:name, :enabled, :description)
    end
end
