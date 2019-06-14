class User < ApplicationRecord
  has_secure_password

  validates :username, presence: true, uniqeness: true
end
