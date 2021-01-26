class TrinhDoTheoMonHocsController < ApplicationController
  before_action :set_trinh_do_theo_mon_hoc, only: [:show, :edit, :update, :destroy]

  # GET /trinh_do_theo_mon_hocs
  # GET /trinh_do_theo_mon_hocs.json
  def index
    @trinh_do_theo_mon_hocs = TrinhDoTheoMonHoc.all
  end

  # GET /trinh_do_theo_mon_hocs/1
  # GET /trinh_do_theo_mon_hocs/1.json
  def show
  end

  # GET /trinh_do_theo_mon_hocs/new
  def new
    @trinh_do_theo_mon_hoc = TrinhDoTheoMonHoc.new
  end

  # GET /trinh_do_theo_mon_hocs/1/edit
  def edit
  end

  # POST /trinh_do_theo_mon_hocs
  # POST /trinh_do_theo_mon_hocs.json
  def create
    @trinh_do_theo_mon_hoc = TrinhDoTheoMonHoc.new(trinh_do_theo_mon_hoc_params)

    respond_to do |format|
      if @trinh_do_theo_mon_hoc.save
        format.html { redirect_to @trinh_do_theo_mon_hoc, notice: 'Trinh do theo mon hoc was successfully created.' }
        format.json { render :show, status: :created, location: @trinh_do_theo_mon_hoc }
      else
        format.html { render :new }
        format.json { render json: @trinh_do_theo_mon_hoc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trinh_do_theo_mon_hocs/1
  # PATCH/PUT /trinh_do_theo_mon_hocs/1.json
  def update
    respond_to do |format|
      if @trinh_do_theo_mon_hoc.update(trinh_do_theo_mon_hoc_params)
        format.html { redirect_to @trinh_do_theo_mon_hoc, notice: 'Trinh do theo mon hoc was successfully updated.' }
        format.json { render :show, status: :ok, location: @trinh_do_theo_mon_hoc }
      else
        format.html { render :edit }
        format.json { render json: @trinh_do_theo_mon_hoc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trinh_do_theo_mon_hocs/1
  # DELETE /trinh_do_theo_mon_hocs/1.json
  def destroy
    @trinh_do_theo_mon_hoc.destroy
    respond_to do |format|
      format.html { redirect_to trinh_do_theo_mon_hocs_url, notice: 'Trinh do theo mon hoc was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trinh_do_theo_mon_hoc
      @trinh_do_theo_mon_hoc = TrinhDoTheoMonHoc.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def trinh_do_theo_mon_hoc_params
      params.require(:trinh_do_theo_mon_hoc).permit(:name, :description, :enabled)
    end
end
