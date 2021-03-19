class UsersController <ApplicationController
    skip_before_action:ensure_user_logged_in
    def new
        render "users/new"
    end

    def create
        user=User.create!(
            first_name:params[:first_name],
            email:params[:email],
            password:params[:password],
            )
            session[:current_user.id]=user.id
            redirect_to "/"
    end

end
