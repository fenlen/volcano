class UniqVolcanosController < ApplicationController
  before_action :set_uniq_volcano, only: [:show, :edit, :update, :destroy]

  # GET /uniq_volcanos
  # GET /uniq_volcanos.json
  def index
    @uniq_volcanos = UniqVolcano.all
  end

  # GET /uniq_volcanos/1
  # GET /uniq_volcanos/1.json
  def show
  end

  # GET /uniq_volcanos/new
  def new
    @uniq_volcano = UniqVolcano.new
  end

  # GET /uniq_volcanos/1/edit
  def edit
  end

  # POST /uniq_volcanos
  # POST /uniq_volcanos.json
  def create
    @uniq_volcano = UniqVolcano.new(uniq_volcano_params)

    respond_to do |format|
      if @uniq_volcano.save
        format.html { redirect_to @uniq_volcano, notice: 'Uniq volcano was successfully created.' }
        format.json { render :show, status: :created, location: @uniq_volcano }
      else
        format.html { render :new }
        format.json { render json: @uniq_volcano.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /uniq_volcanos/1
  # PATCH/PUT /uniq_volcanos/1.json
  def update
    respond_to do |format|
      if @uniq_volcano.update(uniq_volcano_params)
        format.html { redirect_to @uniq_volcano, notice: 'Uniq volcano was successfully updated.' }
        format.json { render :show, status: :ok, location: @uniq_volcano }
      else
        format.html { render :edit }
        format.json { render json: @uniq_volcano.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /uniq_volcanos/1
  # DELETE /uniq_volcanos/1.json
  def destroy
    @uniq_volcano.destroy
    respond_to do |format|
      format.html { redirect_to uniq_volcanos_url, notice: 'Uniq volcano was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_uniq_volcano
      @uniq_volcano = UniqVolcano.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def uniq_volcano_params
      params.require(:uniq_volcano).permit(:Name, :Location, :Country, :Latitude, :Longitude, :Elevation, :Type, :Status, :Time)
    end
end
