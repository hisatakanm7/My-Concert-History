class LocationsController < ApplicationController
    
    def create
        @concert = Concert.find(params[:concert_id])
        @location = @concert.locations.create(location_params)
        redirect_to concert_path(@concert.id)
    end
    
    def destroy
        @location = Location.find(params[:id])
        @location.destroy
        redirect_to concert_path(params[:concert_id])
    end
    
    def edit
        @location = Location.find(params[:id])
    end
    
    def update
        @location = Location.find(params[:id])
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
end
