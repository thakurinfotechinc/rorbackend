class BhajansController < ApplicationController
  before_action :set_bhajan, only: [:show, :edit, :update, :destroy]

  # GET /bhajans
  # GET /bhajans.json
  def index
    @bhajans = Bhajan.all
  end

  # GET /bhajans/1
  # GET /bhajans/1.json
  def show
  end

  # GET /bhajans/new
  def new
    @bhajan = Bhajan.new
  end

  # GET /bhajans/1/edit
  def edit
  end

  # POST /bhajans
  # POST /bhajans.json
  def create
    @bhajan = Bhajan.new(bhajan_params)

    respond_to do |format|
      if @bhajan.save
        format.html { redirect_to @bhajan, notice: 'Bhajan was successfully created.' }
        format.json { render :show, status: :created, location: @bhajan }
      else
        format.html { render :new }
        format.json { render json: @bhajan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bhajans/1
  # PATCH/PUT /bhajans/1.json
  def update
    respond_to do |format|
      if @bhajan.update(bhajan_params)
        format.html { redirect_to @bhajan, notice: 'Bhajan was successfully updated.' }
        format.json { render :show, status: :ok, location: @bhajan }
      else
        format.html { render :edit }
        format.json { render json: @bhajan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bhajans/1
  # DELETE /bhajans/1.json
  def destroy
    @bhajan.destroy
    respond_to do |format|
      format.html { redirect_to bhajans_url, notice: 'Bhajan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bhajan
      @bhajan = Bhajan.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bhajan_params
      params.require(:bhajan).permit(:title, :url, :type, :image_url)
    end
end
