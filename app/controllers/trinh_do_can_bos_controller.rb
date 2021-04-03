class TrinhDoCanBosController < ApplicationController
  before_action :set_trinh_do_can_bo, only: [:show, :edit, :update, :destroy]

  # GET /trinh_do_can_bos
  # GET /trinh_do_can_bos.json
  def index
    @trinh_do_can_bos = TrinhDoCanBo.all
  end

  # GET /trinh_do_can_bos/1
  # GET /trinh_do_can_bos/1.json
  def show
  end

  # GET /trinh_do_can_bos/new
  def new
    @trinh_do_can_bo = TrinhDoCanBo.new
    @child_index = params[:child_index]
    respond_to { |format| format.js }
  end

  # GET /trinh_do_can_bos/1/edit
  def edit
  end

  # POST /trinh_do_can_bos
  # POST /trinh_do_can_bos.json
  def create
    @trinh_do_can_bo = TrinhDoCanBo.new(trinh_do_can_bo_params)

    respond_to do |format|
      if @trinh_do_can_bo.save
        format.html { redirect_to @trinh_do_can_bo, notice: 'Trinh do can bo was successfully created.' }
        format.json { render :show, status: :created, location: @trinh_do_can_bo }
      else
        format.html { render :new }
        format.json { render json: @trinh_do_can_bo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trinh_do_can_bos/1
  # PATCH/PUT /trinh_do_can_bos/1.json
  def update
    respond_to do |format|
      if @trinh_do_can_bo.update(trinh_do_can_bo_params)
        format.html { redirect_to @trinh_do_can_bo, notice: 'Trinh do can bo was successfully updated.' }
        format.json { render :show, status: :ok, location: @trinh_do_can_bo }
      else
        format.html { render :edit }
        format.json { render json: @trinh_do_can_bo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trinh_do_can_bos/1
  # DELETE /trinh_do_can_bos/1.json
  def destroy
    @trinh_do_can_bo.destroy
    respond_to do |format|
      format.html { redirect_to trinh_do_can_bos_url, notice: 'Trinh do can bo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trinh_do_can_bo
      @trinh_do_can_bo = TrinhDoCanBo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def trinh_do_can_bo_params
      params.fetch(:trinh_do_can_bo, {})
    end
end
