class ElementsController < ApplicationController

    def index
        game = Game.find(params[:id])
        elements = game.elements.order(:order) 

        render json: elements 
    end 

    # def create
    #     element = Element.create(
    #         title: (params[:title])
    #         descriptions: (params[:description])
    #         kind: (params[:kind])
    #         content: (params[:content])
    #         order: (params[:order])
    #         game_id: (params[:id])
    #     )
    #     render json: element
    # end

    def show 
        element = Element.find(params[:id])
        render json: element
    end

    def destroy 
        element = Element.find(params[:id])
        element.destroy
    end
end
