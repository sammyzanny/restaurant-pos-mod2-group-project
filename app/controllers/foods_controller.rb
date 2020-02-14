class FoodsController < ApplicationController
    before_action :require_login

    def index
        @check = session[:check_to_edit] ||= nil
        @foods = Food.all
        @food_type = params[:food_type]
    end

    def new
        @food = Food.new
    end

    def create
        @food = Food.new(food_params)
        @food.save
        redirect_to foods_path
    end
    
    def destroy
        Food.find(params[:id]).destroy
        redirect_to foods_path
    end

    private

    def food_params
        params.require(:food).permit(:name, :price, :food_type)
    end

end
