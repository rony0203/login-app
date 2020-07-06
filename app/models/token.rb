class Token < ApplicationRecord
  has_secure_token :auth_token
  belong_to :user
end
