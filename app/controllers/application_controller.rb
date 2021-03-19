class ApplicationController < ActionController::Base
    before_action:ensure_user_logged_in

    def ensure_user_logged_in
        if current_user
            redirect_to "/"
        end
    end

     
    def current_user
        return @current_user if @current_user
        current_user.id=session[:current_user.id]
        if current_user.id
            @current_user=User.find(current_user.id)
        else
            nil
        end
    end
    
end


    


