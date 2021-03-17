class UsersController <ApplicationController
    def new
        render "users/new"
    end

    def create
        User.create!(
            first_name:params[:first_name],
            email:params[:email],
            password:params[:password],
            )
            redirect_to "/"
    end

end
