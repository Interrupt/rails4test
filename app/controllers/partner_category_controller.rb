class PartnerCategoryController < ApplicationController

  # GET /partner_category/1
  # GET /partner_category/1.json
  def show
    @category = PartnerCategory.includes(:perks).find(params[:id])
    @categories = PartnerCategory.all
  end
end
