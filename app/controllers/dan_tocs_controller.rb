class DanTocsController < ApplicationController
  before_action :set_dan_toc, only: [:show, :edit, :update, :destroy]

  # GET /dan_tocs
  # GET /dan_tocs.json
  def index
    @dan_tocs = DanToc.all
  end

  # GET /dan_tocs/1
  # GET /dan_tocs/1.json
  def show
  end

  # GET /dan_tocs/new
  def new
    @dan_toc = DanToc.new
  end

  # GET /dan_tocs/1/edit
  def edit
  end

  # POST /dan_tocs
  # POST /dan_tocs.json
  def create
    @dan_toc = DanToc.new(dan_toc_params)

    respond_to do |format|
      if @dan_toc.save
        format.html { redirect_to @dan_toc, notice: 'Dan toc was successfully created.' }
        format.json { render :show, status: :created, location: @dan_toc }
      else
        format.html { render :new }
        format.json { render json: @dan_toc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dan_tocs/1
  # PATCH/PUT /dan_tocs/1.json
  def update
    respond_to do |format|
      if @dan_toc.update(dan_toc_params)
        format.html { redirect_to @dan_toc, notice: 'Dan toc was successfully updated.' }
        format.json { render :show, status: :ok, location: @dan_toc }
      else
        format.html { render :edit }
        format.json { render json: @dan_toc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dan_tocs/1
  # DELETE /dan_tocs/1.json
  def destroy
    @dan_toc.destroy
    respond_to do |format|
      format.html { redirect_to dan_tocs_url, notice: 'Dan toc was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dan_toc
      @dan_toc = DanToc.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dan_toc_params
      params.require(:dan_toc).permit(:name, :enabled, :description)
    end
end
