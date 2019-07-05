class GeofencesController < ApplicationController

	def index
		@geofence = Geofence.new
		@geofences = Geofence.order(create_at: :asc).limit 4
	end

	def new
        @geofence = Geofence.new
    end

	def create
        @geofence = Geofence.new geofence_params
        if @geofence.save
            flash[:notice] = "Geofence saved successfully"
            redirect_to geofences_index_path
        else
            renderiza
        end
    end

    def geofence_params
        params.require(:geofence).permit(:latitude, :longitude, :radius, :create_at)
    end

    def renderiza 
        render geofences_index_path
    end

end
