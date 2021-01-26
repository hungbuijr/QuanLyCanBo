class TrinhDoVanHoasController < ApplicationController
  before_action :set_trinh_do_van_hoa, only: [:show, :edit, :update, :destroy]

  # GET /trinh_do_van_hoas
  # GET /trinh_do_van_hoas.json
  def index
    @trinh_do_van_hoas = TrinhDoVanHoa.all
  end

  # GET /trinh_do_van_hoas/1
  # GET /trinh_do_van_hoas/1.json
  def show
  end

  # GET /trinh_do_van_hoas/new
  def new
    @trinh_do_van_hoa = TrinhDoVanHoa.new
  end

  # GET /trinh_do_van_hoas/1/edit
  def edit
  end

  # POST /trinh_do_van_hoas
  # POST /trinh_do_van_hoas.json
  def create
    @trinh_do_van_hoa = TrinhDoVanHoa.new(trinh_do_van_hoa_params)

    respond_to do |format|
      if @trinh_do_van_hoa.save
        format.html { redirect_to @trinh_do_van_hoa, notice: 'Trinh do van hoa was successfully created.' }
        format.json { render :show, status: :created, location: @trinh_do_van_hoa }
      else
        format.html { render :new }
        format.json { render json: @trinh_do_van_hoa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trinh_do_van_hoas/1
  # PATCH/PUT /trinh_do_van_hoas/1.json
  def update
    respond_to do |format|
      if @trinh_do_van_hoa.update(trinh_do_van_hoa_params)
        format.html { redirect_to @trinh_do_van_hoa, notice: 'Trinh do van hoa was successfully updated.' }
        format.json { render :show, status: :ok, location: @trinh_do_van_hoa }
      else
        format.html { render :edit }
        format.json { render json: @trinh_do_van_hoa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trinh_do_van_hoas/1
  # DELETE /trinh_do_van_hoas/1.json
  def destroy
    @trinh_do_van_hoa.destroy
    respond_to do |format|
      format.html { redirect_to trinh_do_van_hoas_url, notice: 'Trinh do van hoa was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trinh_do_van_hoa
      @trinh_do_van_hoa = TrinhDoVanHoa.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def trinh_do_van_hoa_params
      params.require(:trinh_do_van_hoa).permit(:name, :enabled, :description)
    end
end
