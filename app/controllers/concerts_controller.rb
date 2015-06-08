class ConcertsController < ApplicationController
    
    before_action :set_concert, only:[:show, :edit, :update, :destroy]
    
    
    def index
        @concerts = Concert.all
    end
    
    def show
    end
    
    def new
        @concert = Concert.new
    end
    
    def create
        @concert = Concert.new(concert_params)
        @concert.save
        redirect_to concerts_path
    end
    
    def edit
    end
    
    def update
        @concert.update(concert_params)
            redirect_to concerts_path
            end
    
    def destroy
        @concert.destroy
        redirect_to concerts_path
    end
    
        
    
    
    
    
    
    private
    
        def concert_params
            params[:concert].permit(:year,:title)
        end
        
        def set_concert
            @concert = Concert.find(params[:id])
        end
end
