class User < ApplicationRecord
    has_secure_password
    validates :username, presence: true, uniqueness: true
    validates :email, presence: true, uniqueness: true
    validates :password, presence: true
    validates :bio, length: {maximum: 150}
    validates :location, length: {maximum: 50}
end
