class CreateBathrooms < ActiveRecord::Migration[5.0]
  def change
    create_table :bathrooms do |t|
      t.string :location_description
      t.boolean :is_fam_friendly
      t.boolean :is_gendered
      t.boolean :is_accessible
      t.float :rating

      t.timestamps
    end
  end
end
