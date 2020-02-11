class ChecksController < ApplicationController

    def show
        set_check
    end

    def index
        @checks = Check.all
    end

    def create
        check = Check.create(server_id: 1)
        redirect_to check_path(check)
    end

    def edit
        set_check
    end

    def update
    end

    private

    def set_check
        @check = Check.find_by(id: params[:id])
    end
end
