class EruptionsController < ApplicationController
  before_action :set_eruption, only: [:show, :edit, :update, :destroy]

  # GET /eruptions
  # GET /eruptions.json
  def index
    @eruptions = Eruption.all
  end

  # GET /eruptions/1
  # GET /eruptions/1.json
  def show
  end

  # GET /eruptions/new
  def new
    @eruption = Eruption.new
  end

  # GET /eruptions/1/edit
  def edit
  end

  # POST /eruptions
  # POST /eruptions.json
  def create
    @eruption = Eruption.new(eruption_params)

    respond_to do |format|
      if @eruption.save
        format.html { redirect_to @eruption, notice: 'Eruption was successfully created.' }
        format.json { render :show, status: :created, location: @eruption }
      else
        format.html { render :new }
        format.json { render json: @eruption.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /eruptions/1
  # PATCH/PUT /eruptions/1.json
  def update
    respond_to do |format|
      if @eruption.update(eruption_params)
        format.html { redirect_to @eruption, notice: 'Eruption was successfully updated.' }
        format.json { render :show, status: :ok, location: @eruption }
      else
        format.html { render :edit }
        format.json { render json: @eruption.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /eruptions/1
  # DELETE /eruptions/1.json
  def destroy
    @eruption.destroy
    respond_to do |format|
      format.html { redirect_to eruptions_url, notice: 'Eruption was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_eruption
      @eruption = Eruption.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def eruption_params
      params.require(:eruption).permit(:year, :month, :day, :tsu, :eq, :vei, :agent, :deaths)
    end
end
