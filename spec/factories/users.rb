FactoryBot.define do
    factory :user do
      username { FFaker::Lorem.characters(number: rand(1..30)) }
      email { FFaker::Lorem.characters(number: rand(1..20)) + '@gmail.com' }
      password { BCrypt::Password.create('password123') }
    end
end
