class CreateLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :locations do |t|
      t.string :name
      t.string :street_number
      t.string :street_name
      t.string :suite
      t.string :city
      t.string :state
      t.string :zip_code

      t.timestamps
    end
  end
end
