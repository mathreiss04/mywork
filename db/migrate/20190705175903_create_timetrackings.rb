class CreateTimetrackings < ActiveRecord::Migration[5.2]
  def change
    create_table :timetrackings do |t|
      t.integer :latitude
      t.integer :longitude

      t.timestamps
    end
  end
end
