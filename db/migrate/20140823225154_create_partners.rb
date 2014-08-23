class CreatePartners < ActiveRecord::Migration
  def change
    create_table :partners do |t|
      t.string :name
      t.string :icon_url
      t.string :url
      t.text :description

      t.timestamps
    end
  end
end
