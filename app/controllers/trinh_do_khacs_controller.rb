class TrinhDoKhacsController < ApplicationController
  before_action :set_trinh_do_khac, only: [:show, :edit, :update, :destroy]

  # GET /trinh_do_khacs
  # GET /trinh_do_khacs.json
  def index
    @trinh_do_khacs = TrinhDoKhac.all
  end

  # GET /trinh_do_khacs/1
  # GET /trinh_do_khacs/1.json
  def show
  end

  # GET /trinh_do_khacs/new
  def new
    @trinh_do_khac = TrinhDoKhac.new
  end

  # GET /trinh_do_khacs/1/edit
  def edit
  end

  # POST /trinh_do_khacs
  # POST /trinh_do_khacs.json
  def create
    @trinh_do_khac = TrinhDoKhac.new(trinh_do_khac_params)

    respond_to do |format|
      if @trinh_do_khac.save
        format.html { redirect_to @trinh_do_khac, notice: 'Trinh do khac was successfully created.' }
        format.json { render :show, status: :created, location: @trinh_do_khac }
      else
        format.html { render :new }
        format.json { render json: @trinh_do_khac.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trinh_do_khacs/1
  # PATCH/PUT /trinh_do_khacs/1.json
  def update
    respond_to do |format|
      if @trinh_do_khac.update(trinh_do_khac_params)
        format.html { redirect_to @trinh_do_khac, notice: 'Trinh do khac was successfully updated.' }
        format.json { render :show, status: :ok, location: @trinh_do_khac }
      else
        format.html { render :edit }
        format.json { render json: @trinh_do_khac.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trinh_do_khacs/1
  # DELETE /trinh_do_khacs/1.json
  def destroy
    @trinh_do_khac.destroy
    respond_to do |format|
      format.html { redirect_to trinh_do_khacs_url, notice: 'Trinh do khac was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trinh_do_khac
      @trinh_do_khac = TrinhDoKhac.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def trinh_do_khac_params
      params.require(:trinh_do_khac).permit(:name, :description, :enabled)
    end
end
