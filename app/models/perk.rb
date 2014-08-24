class Perk < ActiveRecord::Base
  validates :name, :presence => true
  validates :perk_url, :presence => true
  validates :contact_url, :presence => true
  validates :description, :presence => true

  belongs_to :partner

  after_initialize :init

  def init
    self.rating ||= 0
    self.status ||= 0
  end
end
