class ElementsController < ApplicationController

    def index
        game = Game.find(params[:id])
        elements = game.elements.order(:order) 

        render json: elements 
    end 

    def create
        element = Element.create(element_params)
        render json: element 
    end

    def update
        element = Element.find(params[:id])
        element.update(element_params)
        render json: element
    end 

    def show 
        element = Element.find(params[:id])
        render json: element
    end

    def destroy 
        element = Element.find(params[:id])
        element.destroy
    end
    
    private 

    def element_params
        params.require(:element).permit(:title, :description, :kind, :content, :order, :game_id)
    end
end
