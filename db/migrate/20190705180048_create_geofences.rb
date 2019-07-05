class CreateGeofences < ActiveRecord::Migration[5.2]
  def change
    create_table :geofences do |t|
      t.integer :latitude
      t.integer :longitude
      t.integer :radius

      t.timestamps
    end
  end
end
