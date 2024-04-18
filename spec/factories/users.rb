FactoryBot.define do
    factory :user do
      username { FFaker::Lorem.characters }
      email { FFaker::Lorem.characters + '@gmail.com' }
      password { BCrypt::Password.create('password123') }
    end
end
