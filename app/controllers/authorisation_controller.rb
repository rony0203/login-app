class AuthorisationController < ApplicationController
  def login
    @user = User.find_by_email(params[:email])
    if @user && @user.authenticate(params[:password])
      render json: @user

    else
render plain: "Error"
end
  end
end
