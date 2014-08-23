class AddPartnerRefToPerks < ActiveRecord::Migration
  def change
    add_reference :perks, :partner, index: true
  end
end
