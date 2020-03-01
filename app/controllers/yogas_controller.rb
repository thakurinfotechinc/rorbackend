class YogasController < ApplicationController
  before_action :set_yoga, only: [:show, :edit, :update, :destroy]

  # GET /yogas
  # GET /yogas.json
  def index
    @yogas = Yoga.all
  end

  # GET /yogas/1
  # GET /yogas/1.json
  def show
  end

  # GET /yogas/new
  def new
    @yoga = Yoga.new
  end

  # GET /yogas/1/edit
  def edit
  end

  # POST /yogas
  # POST /yogas.json
  def create
    @yoga = Yoga.new(yoga_params)

    respond_to do |format|
      if @yoga.save
        format.html { redirect_to @yoga, notice: 'Yoga was successfully created.' }
        format.json { render :show, status: :created, location: @yoga }
      else
        format.html { render :new }
        format.json { render json: @yoga.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /yogas/1
  # PATCH/PUT /yogas/1.json
  def update
    respond_to do |format|
      if @yoga.update(yoga_params)
        format.html { redirect_to @yoga, notice: 'Yoga was successfully updated.' }
        format.json { render :show, status: :ok, location: @yoga }
      else
        format.html { render :edit }
        format.json { render json: @yoga.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /yogas/1
  # DELETE /yogas/1.json
  def destroy
    @yoga.destroy
    respond_to do |format|
      format.html { redirect_to yogas_url, notice: 'Yoga was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_yoga
      @yoga = Yoga.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def yoga_params
      params.require(:yoga).permit(:title, :description_en, :description_hi, :image_path, :yoga_type)
    end
end
