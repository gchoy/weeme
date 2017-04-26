class AddLocationReferenceToBathrooms < ActiveRecord::Migration[5.0]
  def change
    add_reference :bathrooms, :location, foreign_key: true
  end
end
