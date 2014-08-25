class PartnerCategory < ActiveRecord::Base
  has_and_belongs_to_many :partners
  has_many :perks, :through => :partners
end
