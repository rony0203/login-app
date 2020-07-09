class ApplicationController < ActionController::API
  def auth
    token = request.headers['Authorization']
    user = Token.find_by(auth_token: token)&.user
    if user
      @current_user = user
    else
      raise "user not found 123"
    end
  end

end
