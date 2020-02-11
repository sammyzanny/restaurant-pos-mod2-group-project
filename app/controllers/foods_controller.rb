class FoodsController < ApplicationController
    #before_action :require_login

    def index
        @foods = Food.all
        @food_type = params[:food_type]
    end
end
