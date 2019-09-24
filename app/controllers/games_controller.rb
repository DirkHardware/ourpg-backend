class GamesController < ApplicationController
    def index
        games = Game.all
        render json: games
      end

    # def user_games
    #     user = User.find(params[:id])
    #     games = user.games.all
    #     render json: games 
    # end
    
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

    # def destroy
    #     game = Game.find(params[:id])
    #     game.delete
    #     render json: game
    # end

    # def publish 
    #     game = Game.find(params[:id])
    #     if game.published = true 
    #         game.published = false
    #     else 
    #         game.published = true 
    #     end
    #     render json: game
    # end 
      
    # def create
    #     game = Game.create(
    #         title: (params[:name])
    #         description: (params[:description])
    #         published = false 
    #     )
    #     render json: game 
    # end
    
    # def update
    #     game = Game.find(params[:id])
    #     game.update      
    #     name: params([:name])
    #     content: params([:content])
    #     render json: game
    # end

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
end
