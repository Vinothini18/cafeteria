class SessionsController<ApplicationController
    skip_before_action:ensure_user_logged_in
   
    def new
    end

    def create
        user=User.find_by(email: params[:email])
        if user && user.authenticate(params[:password])
            session[:current_user.id]=user.id
            redirect_to "/"
        else
            render plain:"Incorrect password"
        end
    end
    def destroy
        session[:current_user.id]=nil
        @current_user=nil
        redirect_to "/"
    end



end