class CreatePartnerCategories < ActiveRecord::Migration
  def change
    create_table :partner_categories do |t|
      t.string :name
      t.string :status

      t.timestamps
    end
  end
end
