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
