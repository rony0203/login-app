before_action :authenticate, only: :show
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
      current_user = Token.find_by(token: token)&.user
if current_user.present?
  render json: @user
else
  render json: { error: 'Not Authorized' }, status: :unauthorized
end
   end
   def user_params
   params.require(:user).permit(:name, :email, :password)
 end

end
