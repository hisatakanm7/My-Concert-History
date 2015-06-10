class SongsController < ApplicationController
    
    before_action :set_song, only:[:edit, :update, :destroy]
    
        
        def create
            @concert = Concert.find(params[:concert_id])
            @song = @concert.songs.create(song_params)
            redirect_to concert_path(@concert.id)
        end
        
        def destroy
            id = @song[:concert_id]
            @song.destroy
            redirect_to concert_path(id)
        end
        
        def edit
        end
        
        def update
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
        
        def set_song
            @song = Song.find(params[:id])
        end
    end

    
    
    

