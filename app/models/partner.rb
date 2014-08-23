class Partner < ActiveRecord::Base
  has_and_belongs_to_many :partner_categories
end
