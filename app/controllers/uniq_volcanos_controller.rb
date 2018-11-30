class UniqVolcanosController < ApplicationController
  before_action :set_uniq_volcano, only: [:show, :edit, :update, :destroy]
  include CurrentCart
  before_action :set_cart
  # GET /uniq_volcanos
  # GET /uniq_volcanos.json
  def index
    @uniq_volcanos = UniqVolcano.all
  end

  # GET /uniq_volcanos/1
  # GET /uniq_volcanos/1.json
  def show
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
