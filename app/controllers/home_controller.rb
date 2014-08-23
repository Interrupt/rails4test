class HomeController < ApplicationController
  def index
    @perks = Perk.take(20)
  end
end
