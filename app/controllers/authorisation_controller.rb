class AuthorisationController < AploicationController
  def login
    @user = User.find_by_email([:email])
  end
end
