class BirdsController < ApplicationController

    def index
        render json: Bird.all, status: 200
    end

    def show
        bird = Bird.find(params[:id])
        render json: bird, status: 200
    rescue ActiveRecord::RecordNotFound
        render json: "Bird not found", status: 404
    end
end
