class HomeController < ApplicationController
  def index
    @perk_categories = {}
    Perk.active.each do |p|
      p.partner_categories.each do |c|
        @perk_categories[c.name] ||= []
        @perk_categories[c.name].push(p)
      end
    end
  end
end
