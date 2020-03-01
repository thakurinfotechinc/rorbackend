class YogsController < ApplicationController
  before_action :set_yog, only: [:show, :edit, :update, :destroy]

  # GET /yogs
  # GET /yogs.json
  def index
    @yogs = Yog.all
  end

  # GET /yogs/1
  # GET /yogs/1.json
  def show
  end

  # GET /yogs/new
  def new
    @yog = Yog.new
  end

  # GET /yogs/1/edit
  def edit
  end

  # POST /yogs
  # POST /yogs.json
  def create
    @yog = Yog.new(yog_params)

    respond_to do |format|
      if @yog.save
        format.html { redirect_to @yog, notice: 'Yog was successfully created.' }
        format.json { render :show, status: :created, location: @yog }
      else
        format.html { render :new }
        format.json { render json: @yog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /yogs/1
  # PATCH/PUT /yogs/1.json
  def update
    respond_to do |format|
      if @yog.update(yog_params)
        format.html { redirect_to @yog, notice: 'Yog was successfully updated.' }
        format.json { render :show, status: :ok, location: @yog }
      else
        format.html { render :edit }
        format.json { render json: @yog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /yogs/1
  # DELETE /yogs/1.json
  def destroy
    @yog.destroy
    respond_to do |format|
      format.html { redirect_to yogs_url, notice: 'Yog was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_yog
      @yog = Yog.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def yog_params
      params.require(:yog).permit(:title, :description_en, :description_hi, :image_path, :yog_type)
    end
end
