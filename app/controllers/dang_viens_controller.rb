class DangViensController < ApplicationController
  before_action :set_dang_vien, only: [:show, :edit, :update, :destroy]

  # GET /dang_viens
  # GET /dang_viens.json
  def index
    @dang_viens = DangVien.all
  end

  # GET /dang_viens/1
  # GET /dang_viens/1.json
  def show
  end

  # GET /dang_viens/new
  def new
    @dang_vien = DangVien.new
  end

  # GET /dang_viens/1/edit
  def edit
  end

  # POST /dang_viens
  # POST /dang_viens.json
  def create
    @dang_vien = DangVien.new(dang_vien_params)

    respond_to do |format|
      if @dang_vien.save
        format.html { redirect_to @dang_vien, notice: 'Dang vien was successfully created.' }
        format.json { render :show, status: :created, location: @dang_vien }
      else
        format.html { render :new }
        format.json { render json: @dang_vien.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dang_viens/1
  # PATCH/PUT /dang_viens/1.json
  def update
    respond_to do |format|
      if @dang_vien.update(dang_vien_params)
        format.html { redirect_to @dang_vien, notice: 'Dang vien was successfully updated.' }
        format.json { render :show, status: :ok, location: @dang_vien }
      else
        format.html { render :edit }
        format.json { render json: @dang_vien.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dang_viens/1
  # DELETE /dang_viens/1.json
  def destroy
    @dang_vien.destroy
    respond_to do |format|
      format.html { redirect_to dang_viens_url, notice: 'Dang vien was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dang_vien
      @dang_vien = DangVien.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dang_vien_params
      params.require(:dang_vien).permit(:so_the_dang, :name, :enabled, :description)
    end
end
