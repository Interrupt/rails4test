class CreatePerks < ActiveRecord::Migration
  def change
    create_table :perks do |t|
      t.string :name
      t.string :perk_url
      t.string :contact_url
      t.text :description
      t.integer :rating
      t.integer :status

      t.timestamps
    end
  end
end
