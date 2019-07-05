class Timetracking < ApplicationRecord

	validates :latitude, :longitude, presence: true

end
