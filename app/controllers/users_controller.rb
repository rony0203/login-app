class UsersController < ApplicationController
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
      @user = User.find params[:id] #-> stateless means you have to rebuild the object again
   end
   def user_params
   params.require(:user).permit(:name, :email, :password)
 end

end
