class SessionsController < ApplicationController
    def create
        user = Users.find_by(email : params[:email])
        session[:user_id]=user.id
        render json: user
    end
end
