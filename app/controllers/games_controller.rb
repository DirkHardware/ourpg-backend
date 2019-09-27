class GamesController < ApplicationController
    def index
        games = Game.all
        render json: games
      end

    def user_games
        user = User.find(params[:id])
        games = user.games.all
        render json: games 
    end
    
    def all_games_published
        games = Game.all.select{|game| game.published == true}
        render json: games
    end
    
    # def user_games_published
    #     user = User.find(params[:id])
    #     games = user.games.select(published: true)
    #     render json: games 
    # end 
    
    def show
        game = Game.find(params[:id])
        render json: game
    end
    
    def game_element_length
        game_element_length = Game.find(params[:id]).elements.length
        render json: game_element_length
    end
    
    def update
        game = Game.find(params[:id])
        game.update(game_params)
        render json: game
    end 

    # def destroy
    #     game = Game.find(params[:id])
    #     game.delete
    #     render json: game
    # end

    def create
        game = Game.create(game_params)
        render json: game 
    end

    # def random
    #     sr = SimpleRandom.new
    #     slice_size = params[:num].to_i
    #     random_games = []
    #     deck_size.times do 
    #       sr.set_seed
    #       random_cards.push(Card.find(sr.uniform(1, 29203).round))
    #      end
    #     render json: random_cards
    # end

    private 

    def game_params
        params.require(:game).permit(:title, :description, :published, :user_id)
    end
    
end
