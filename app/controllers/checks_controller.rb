class ChecksController < ApplicationController
    before_action :require_login
    def show
        set_check
    end

    def index
        @checks = Check.all
    end

    def create
        check = Check.create(server_id: current_server.id)
        redirect_to check_path(check)
    end

    def edit
        set_check
    end

    def add_item
        set_check
        @foods = Food.all
        @food_type = params[:food_type] 
    end

    def item_added
        set_check
        if params[:food_id]
            @check.foods << Food.find_by(id: params[:food_id])
            @check.save
        end
        redirect_to add_item_path(@check)
    end

    def payment
        set_check
        @check.pay_check
        redirect_to check_path(@check)
    end

    def refund
        set_check
        @check.refund_check
        redirect_to check_path(@check)
    end

    def session_check
        session[:check_to_edit] = Check.find(params[:id])
        redirect_to foods_path
    end

    def remove_session_check
    end

    def update
        set_check
        @check.update(check_params)
        redirect_to check_path(@check)
    end

    private

    def set_check
        @check = Check.find_by(id: params[:id])
    end

    def check_params
        params.require(:check).permit(:food_id)
    end
end
