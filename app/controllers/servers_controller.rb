class ServersController < ApplicationController

    def new
        @server = Server.new
    end

    def create 
        @server = Server.new(server_params)
        if @server.valid?
            @server.save
            sessions[:server_id] = @server.id
            return redirect_to server_path(@server)
        end

        flash[:errors] = @server.errors.full_messages
        redirect_to new_server_path
    end

    def show
        require_login
        @server = Server.find(params[:id])
    end


    def server_params
        params.require(:server).permit(:name, :pin)
    end
        
end
