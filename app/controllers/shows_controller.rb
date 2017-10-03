class ShowsController < ApplicationController

    def show_params
        params.require(:show).permit([:title, :series, :description, :image, :programmeID])
    end
    
    def index
        show = Show.all
        render :json => show 
    end

    def create
        show = Show.create(show_params)
        render :json => show
    end

end
