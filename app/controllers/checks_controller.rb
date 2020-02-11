class ChecksController < ApplicationController
    before_action: require_login
    def show
        set_check
    end

    def index
        @checks = Check.all
    end

    def create
        check = Check.create(server_id: 1) #change this to current server once able
        redirect_to check_path(check)
    end

    def edit
        set_check
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
