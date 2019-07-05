class TimetrackingsController < ApplicationController

	def index
		@timetracking = Timetracking.new
		@timetrackings = Timetracking.order(create_at: :asc).limit 4
	end

	def new
        @timetracking = Timetracking.new
    end

	def create
        @timetracking = Timetracking.new timetracking_params
        if @timetracking.save
            flash[:notice] = "Timetracking saved successfully"
            redirect_to root_url
        else
            renderiza
        end
    end

    def timetracking_params
        params.require(:timetracking).permit(:latitude, :longitude, :create_at, :comments)
    end

    def renderiza 
        render :index
    end

end
