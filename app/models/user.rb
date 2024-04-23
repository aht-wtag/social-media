class User < ApplicationRecord
    has_secure_password
    validates :username, presence: true, uniqueness: true
    validates :email, format: { with: /\A(.+)@(.+)\z/, message: "Email invalid"  },
    presence: true, uniqueness: true
    validates :password, presence: true
end
