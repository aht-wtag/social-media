class User < ApplicationRecord
    has_secure_password
    has_many :posts, dependent: :destroy
    has_many :friendships, class_name: 'Friendship', dependent: :destroy
    has_many :friends, through: :friendships, source: :user
    validates :username, presence: true, uniqueness: true
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP },
    presence: true, uniqueness: true
    validates :password, presence: true
end
