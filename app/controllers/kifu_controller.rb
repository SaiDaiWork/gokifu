class KifuController < ApplicationController
    def list
        @kifus = Kifu.all
    end

    def show
        @kifu = Kifu.find(params[:id])
    end
    
    def new
        @kifu = Kifu.new
        @player = Player.all
    end

    def create
        @kifu = Kifu.new(kifu_params)
        
        if  @kifu.save
            redirect_to :action => 'list'
        else
            @players = Players.all
            render :action => 'new'
        end
    end

    def kifu_params
        params.require(:kifus).permit(:player_id, :player_id, :Game_date, :Game_result, :View)
    end

    def edit
        @kifu = Kifu.find(params[:id])
        @players = Player.all
    end

    def update
        @kifu = Kifu.find(params[:id])
         
        if @kifu.update_attributes(book_param)
           redirect_to :action => 'show', :id => @kifu
        else
           @players = Player.all
           render :action => 'edit'
        end
        
    end

    def delete
        Kifu.find(params[:id]).destroy
        redirect_to :action => 'list'
    end
     
end
