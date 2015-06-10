class LocationsController < ApplicationController
    
    before_action :set_location, only:[:edit, :update, :destroy]
    
    def create
        @concert = Concert.find(params[:concert_id])
        @location = @concert.locations.create(location_params)
        redirect_to concert_path(@concert.id)
    end
    
    def destroy
        @location.destroy
        redirect_to concert_path(params[:concert_id])
    end
    
    def edit
    end
    
    def update
        if @location.update(location_params)
            redirect_to concert_path(params[:concert_id])
            else
            render 'edit'
            end
        end
        
    
    private
    
        def location_params
            params[:location].permit(:month, :day, :prefecture, :place)
        end
        
        def set_location
            @location = Location.find(params[:id])
        end
end
