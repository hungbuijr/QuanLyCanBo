class QueQuansController < ApplicationController
  before_action :set_que_quan, only: [:show, :edit, :update, :destroy]

  # GET /que_quans
  # GET /que_quans.json
  def index
    @que_quans = QueQuan.all
  end

  # GET /que_quans/1
  # GET /que_quans/1.json
  def show
  end

  # GET /que_quans/new
  def new
    @que_quan = QueQuan.new
  end

  # GET /que_quans/1/edit
  def edit
  end

  # POST /que_quans
  # POST /que_quans.json
  def create
    @que_quan = QueQuan.new(que_quan_params)

    respond_to do |format|
      if @que_quan.save
        format.html { redirect_to @que_quan, notice: 'Que quan was successfully created.' }
        format.json { render :show, status: :created, location: @que_quan }
      else
        format.html { render :new }
        format.json { render json: @que_quan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /que_quans/1
  # PATCH/PUT /que_quans/1.json
  def update
    respond_to do |format|
      if @que_quan.update(que_quan_params)
        format.html { redirect_to @que_quan, notice: 'Que quan was successfully updated.' }
        format.json { render :show, status: :ok, location: @que_quan }
      else
        format.html { render :edit }
        format.json { render json: @que_quan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /que_quans/1
  # DELETE /que_quans/1.json
  def destroy
    @que_quan.destroy
    respond_to do |format|
      format.html { redirect_to que_quans_url, notice: 'Que quan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_que_quan
      @que_quan = QueQuan.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def que_quan_params
      params.require(:que_quan).permit(:name, :enabled, :description)
    end
end
