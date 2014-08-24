class PerksController < ApplicationController
  before_action :set_perk, only: [:show]

  # GET /perks
  # GET /perks.json
  def index
    @perks = Perk.all
  end

  # GET /perks/1
  # GET /perks/1.json
  def show
    @categories = PartnerCategory.all
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_perk
      @perk = Perk.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def perk_params
      params.require(:perk).permit(:name, :perk_url, :contact_url, :description, :rating, :status)
    end
end
