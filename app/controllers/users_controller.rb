
class UsersController < ApplicationController
  before_action :auth, only: :show
   def new
      @user = User.new #-> invokes a new user object
      render json: @user
   end

   def create
      @user = User.new user_params #-> invokes a new user object & populates with your params
      @user.save #-> "saves" the new record
      render json: @user
   end

   def show
render json: {message: "OK"}

end
   def user_params
   params.require(:user).permit(:name, :email, :password)
 end

end
