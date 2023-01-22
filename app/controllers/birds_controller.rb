class BirdsController < ApplicationController

    def index
        render json: Bird.all, status: 200
    end
end
