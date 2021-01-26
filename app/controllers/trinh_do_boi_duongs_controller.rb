class TrinhDoBoiDuongsController < ApplicationController
  before_action :set_trinh_do_boi_duong, only: [:show, :edit, :update, :destroy]

  # GET /trinh_do_boi_duongs
  # GET /trinh_do_boi_duongs.json
  def index
    @trinh_do_boi_duongs = TrinhDoBoiDuong.all
  end

  # GET /trinh_do_boi_duongs/1
  # GET /trinh_do_boi_duongs/1.json
  def show
  end

  # GET /trinh_do_boi_duongs/new
  def new
    @trinh_do_boi_duong = TrinhDoBoiDuong.new
  end

  # GET /trinh_do_boi_duongs/1/edit
  def edit
  end

  # POST /trinh_do_boi_duongs
  # POST /trinh_do_boi_duongs.json
  def create
    @trinh_do_boi_duong = TrinhDoBoiDuong.new(trinh_do_boi_duong_params)

    respond_to do |format|
      if @trinh_do_boi_duong.save
        format.html { redirect_to @trinh_do_boi_duong, notice: 'Trinh do boi duong was successfully created.' }
        format.json { render :show, status: :created, location: @trinh_do_boi_duong }
      else
        format.html { render :new }
        format.json { render json: @trinh_do_boi_duong.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trinh_do_boi_duongs/1
  # PATCH/PUT /trinh_do_boi_duongs/1.json
  def update
    respond_to do |format|
      if @trinh_do_boi_duong.update(trinh_do_boi_duong_params)
        format.html { redirect_to @trinh_do_boi_duong, notice: 'Trinh do boi duong was successfully updated.' }
        format.json { render :show, status: :ok, location: @trinh_do_boi_duong }
      else
        format.html { render :edit }
        format.json { render json: @trinh_do_boi_duong.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trinh_do_boi_duongs/1
  # DELETE /trinh_do_boi_duongs/1.json
  def destroy
    @trinh_do_boi_duong.destroy
    respond_to do |format|
      format.html { redirect_to trinh_do_boi_duongs_url, notice: 'Trinh do boi duong was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trinh_do_boi_duong
      @trinh_do_boi_duong = TrinhDoBoiDuong.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def trinh_do_boi_duong_params
      params.require(:trinh_do_boi_duong).permit(:name, :description, :enabled)
    end
end
