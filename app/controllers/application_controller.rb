class ApplicationController < ActionController::Base
    def hello
        if session[:server_id]
            server = Server.find(session[:server_id])
            return redirect_to server_path(server)
        end
    end

    def login
        @server = Server.find_by(pin: params[:pin])
        if @server
            session[:server_id] = @server.id 
            return redirect_to server_path(@server)
        end

        redirect_to controller: 'application', action: 'hello'

    end

    def logout
        session[:server_id] = nil
        redirect_to controller: 'application', action: 'hello'
    end

    def current_server
        Server.find(session[:server_id])
    end

    private

    def require_login
        return head(:forbidden) unless session.include? :server_id
    end
end
