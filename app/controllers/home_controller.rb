class HomeController < ApplicationController
  def index
    @perks = Perk.take(20)
    @categories = PartnerCategory.all
  end
end
