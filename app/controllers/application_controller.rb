class ApplicationController < ActionController::Base
    def hello
        @message = flash[:no_user_message]
        if session[:server_id]
            server = Server.find_by(id: session[:server_id])
            if server
                return redirect_to server_path(server)
            end
        end
    end

    def login
        @server = Server.find_by(pin: params[:pin])
        if @server
            session[:server_id] = @server.id 
            return redirect_to server_path(@server)
        end
        flash[:no_user_message] = "Invalid PIN"
        redirect_to controller: 'application', action: 'hello'
    end

    def logout
        session[:server_id] = nil
        redirect_to controller: 'application', action: 'hello'
    end

    
    private

    def current_server
        Server.find(session[:server_id])
    end

    def require_login
        unless session.include? :server_id
            return redirect_to '/' 
        end
    end
end
