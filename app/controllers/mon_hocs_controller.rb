class MonHocsController < ApplicationController
  before_action :set_mon_hoc, only: [:show, :edit, :update, :destroy]

  # GET /mon_hocs
  # GET /mon_hocs.json
  def index
    @mon_hocs = MonHoc.all
  end

  # GET /mon_hocs/1
  # GET /mon_hocs/1.json
  def show
  end

  # GET /mon_hocs/new
  def new
    @mon_hoc = MonHoc.new
  end

  # GET /mon_hocs/1/edit
  def edit
  end

  # POST /mon_hocs
  # POST /mon_hocs.json
  def create
    @mon_hoc = MonHoc.new(mon_hoc_params)

    respond_to do |format|
      if @mon_hoc.save
        format.html { redirect_to @mon_hoc, notice: 'Mon hoc was successfully created.' }
        format.json { render :show, status: :created, location: @mon_hoc }
      else
        format.html { render :new }
        format.json { render json: @mon_hoc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mon_hocs/1
  # PATCH/PUT /mon_hocs/1.json
  def update
    respond_to do |format|
      if @mon_hoc.update(mon_hoc_params)
        format.html { redirect_to @mon_hoc, notice: 'Mon hoc was successfully updated.' }
        format.json { render :show, status: :ok, location: @mon_hoc }
      else
        format.html { render :edit }
        format.json { render json: @mon_hoc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mon_hocs/1
  # DELETE /mon_hocs/1.json
  def destroy
    @mon_hoc.destroy
    respond_to do |format|
      format.html { redirect_to mon_hocs_url, notice: 'Mon hoc was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mon_hoc
      @mon_hoc = MonHoc.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mon_hoc_params
      params.require(:mon_hoc).permit(:name, :description, :enabled)
    end
end
