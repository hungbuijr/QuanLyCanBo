class TinHocsController < ApplicationController
  before_action :set_tin_hoc, only: [:show, :edit, :update, :destroy]

  # GET /tin_hocs
  # GET /tin_hocs.json
  def index
    @tin_hocs = TinHoc.all
  end

  # GET /tin_hocs/1
  # GET /tin_hocs/1.json
  def show
  end

  # GET /tin_hocs/new
  def new
    @tin_hoc = TinHoc.new
  end

  # GET /tin_hocs/1/edit
  def edit
  end

  # POST /tin_hocs
  # POST /tin_hocs.json
  def create
    @tin_hoc = TinHoc.new(tin_hoc_params)

    respond_to do |format|
      if @tin_hoc.save
        format.html { redirect_to @tin_hoc, notice: 'Tin hoc was successfully created.' }
        format.json { render :show, status: :created, location: @tin_hoc }
      else
        format.html { render :new }
        format.json { render json: @tin_hoc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tin_hocs/1
  # PATCH/PUT /tin_hocs/1.json
  def update
    respond_to do |format|
      if @tin_hoc.update(tin_hoc_params)
        format.html { redirect_to @tin_hoc, notice: 'Tin hoc was successfully updated.' }
        format.json { render :show, status: :ok, location: @tin_hoc }
      else
        format.html { render :edit }
        format.json { render json: @tin_hoc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tin_hocs/1
  # DELETE /tin_hocs/1.json
  def destroy
    @tin_hoc.destroy
    respond_to do |format|
      format.html { redirect_to tin_hocs_url, notice: 'Tin hoc was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tin_hoc
      @tin_hoc = TinHoc.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tin_hoc_params
      params.require(:tin_hoc).permit(:name, :description, :enabled)
    end
end
