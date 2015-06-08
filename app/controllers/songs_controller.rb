class SongsController < ApplicationController
    
    
    
        
        def create
            @concert = Concert.find(params[:concert_id])
            @song = @concert.songs.create(song_params)
            redirect_to concert_path(@concert.id)
        end
        
        def destroy
            @song = Song.find(params[:id])
            id = @song[:concert_id]
            @song.destroy
            redirect_to concert_path(id)
        end
        
        def edit
            @song = Song.find(params[:id])
        end
        
        def update
            @song = Song.find(params[:id])
            id = @song[:concert_id]
            if @song.update(song_params)
                redirect_to concert_path(id)
                else
                render 'edit'
            end
        end
        
        
        private
        
        def song_params
            params[:song].permit(:number, :title, :cd, :cd2, :cd3)
        end
    end

    
    
    

