class FoodsController < ApplicationController
    before_action :require_login

    def index
        @check = session[:check_to_edit] ||= nil
        @foods = Food.all
        @food_type = params[:food_type]
    end

    def new
        @food = Food.new
        @errors = flash[:errors]
    end

    def create
        @food = Food.new(food_params)
          if @food.save
            redirect_to foods_path
          else
            flash[:errors] = @food.errors.full_messages
            redirect_to new_food_path
          end
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
