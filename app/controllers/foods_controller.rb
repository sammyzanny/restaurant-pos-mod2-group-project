class FoodsController < ApplicationController
    def index
        @foods = Food.all
        @food_type = params[:food_type]
    end
end
