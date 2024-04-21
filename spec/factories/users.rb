FactoryBot.define do
    factory :user do
      username { FFaker::Internet.name }
      email { FFaker::Internet.email + '@gmail.com' }
      password { BCrypt::Password.create('password123') }
      FFaker::UniqueUtils.clear
    end
end
