class JoinTablePartnerCategory < ActiveRecord::Migration
  def change
    create_join_table :partners, :partner_categories do |t|
      # t.index [:partner_id, :partner_category_id]
      # t.index [:partner_category_id, :partner_id]
    end
  end
end
