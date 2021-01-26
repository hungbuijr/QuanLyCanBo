class TrinhDosController < ApplicationController
  before_action :set_trinh_do, only: [:show, :edit, :update, :destroy]

  # GET /trinh_dos
  # GET /trinh_dos.json
  def index
    @trinh_dos = TrinhDo.all
  end

  # GET /trinh_dos/1
  # GET /trinh_dos/1.json
  def show
  end

  # GET /trinh_dos/new
  def new
    @trinh_do = TrinhDo.new
  end

  # GET /trinh_dos/1/edit
  def edit
  end

  # POST /trinh_dos
  # POST /trinh_dos.json
  def create
    @trinh_do = TrinhDo.new(trinh_do_params)

    respond_to do |format|
      if @trinh_do.save
        format.html { redirect_to @trinh_do, notice: 'Trinh do was successfully created.' }
        format.json { render :show, status: :created, location: @trinh_do }
      else
        format.html { render :new }
        format.json { render json: @trinh_do.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trinh_dos/1
  # PATCH/PUT /trinh_dos/1.json
  def update
    respond_to do |format|
      if @trinh_do.update(trinh_do_params)
        format.html { redirect_to @trinh_do, notice: 'Trinh do was successfully updated.' }
        format.json { render :show, status: :ok, location: @trinh_do }
      else
        format.html { render :edit }
        format.json { render json: @trinh_do.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trinh_dos/1
  # DELETE /trinh_dos/1.json
  def destroy
    @trinh_do.destroy
    respond_to do |format|
      format.html { redirect_to trinh_dos_url, notice: 'Trinh do was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trinh_do
      @trinh_do = TrinhDo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def trinh_do_params
      params.require(:trinh_do).permit(:name, :description, :enabled)
    end
end
