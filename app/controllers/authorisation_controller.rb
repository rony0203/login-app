class AuthorisationController < ApplicationController
  def login
    @user = User.find_by_email(params[:email])
  if @user && @user.authenticate(params[:password])
  @token = Token.create(user_id: @user)
      render json: {user: @user, token: @token}

    else
render plain: "Error"
end
  end
end
