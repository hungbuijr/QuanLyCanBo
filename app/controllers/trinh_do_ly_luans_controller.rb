class TrinhDoLyLuansController < ApplicationController
  before_action :set_trinh_do_ly_luan, only: [:show, :edit, :update, :destroy]

  # GET /trinh_do_ly_luans
  # GET /trinh_do_ly_luans.json
  def index
    @trinh_do_ly_luans = TrinhDoLyLuan.all
  end

  # GET /trinh_do_ly_luans/1
  # GET /trinh_do_ly_luans/1.json
  def show
  end

  # GET /trinh_do_ly_luans/new
  def new
    @trinh_do_ly_luan = TrinhDoLyLuan.new
  end

  # GET /trinh_do_ly_luans/1/edit
  def edit
  end

  # POST /trinh_do_ly_luans
  # POST /trinh_do_ly_luans.json
  def create
    @trinh_do_ly_luan = TrinhDoLyLuan.new(trinh_do_ly_luan_params)

    respond_to do |format|
      if @trinh_do_ly_luan.save
        format.html { redirect_to @trinh_do_ly_luan, notice: 'Trinh do ly luan was successfully created.' }
        format.json { render :show, status: :created, location: @trinh_do_ly_luan }
      else
        format.html { render :new }
        format.json { render json: @trinh_do_ly_luan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trinh_do_ly_luans/1
  # PATCH/PUT /trinh_do_ly_luans/1.json
  def update
    respond_to do |format|
      if @trinh_do_ly_luan.update(trinh_do_ly_luan_params)
        format.html { redirect_to @trinh_do_ly_luan, notice: 'Trinh do ly luan was successfully updated.' }
        format.json { render :show, status: :ok, location: @trinh_do_ly_luan }
      else
        format.html { render :edit }
        format.json { render json: @trinh_do_ly_luan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trinh_do_ly_luans/1
  # DELETE /trinh_do_ly_luans/1.json
  def destroy
    @trinh_do_ly_luan.destroy
    respond_to do |format|
      format.html { redirect_to trinh_do_ly_luans_url, notice: 'Trinh do ly luan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trinh_do_ly_luan
      @trinh_do_ly_luan = TrinhDoLyLuan.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def trinh_do_ly_luan_params
      params.require(:trinh_do_ly_luan).permit(:name, :enabled, :description)
    end
end
