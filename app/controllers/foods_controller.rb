class FoodsController < ApplicationController
    before_action :require_login

    def index
        @check = session[:check_to_edit] ||= nil
        @foods = Food.all
        @food_type = params[:food_type]
    end
end
