FactoryBot.define do
    factory :user do
      username { FFaker::Internet.name }
      email { FFaker::Internet.email}
      password { BCrypt::Password.create('password123') }
    end
end
