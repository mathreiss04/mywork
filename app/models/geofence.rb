class Geofence < ApplicationRecord

	validates :latitude, :longitude, :radius, presence: true

end
