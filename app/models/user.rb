class User < ApplicationRecord
    has_secure_password
    has_many :posts, dependent: :destroy
    has_many :friendships, dependent: :destroy
    has_many :friends, through: :friendships
    validates :username, presence: true, uniqueness: true
    validates :email, presence: true, uniqueness: true
    validates :password, presence: true
end
