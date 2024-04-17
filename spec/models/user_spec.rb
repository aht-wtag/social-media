require "rails_helper"
require 'faker'
RSpec.describe User,type: :model do
  user = User.create()
  describe "validates username, password and email" do
    it "validates presence of username, password, email" do
        expect(user).not_to be_valid
    end

    it "validates presence of password, email" do
      user.username="tahsin"
      expect(user).not_to be_valid
    end

    it "validates presence of password" do
      user.email = "tahsin@gmail.com"
      expect(user).not_to be_valid
    end

    it "Should be good now so that all three must ones are present" do
      user.password = "hello world"
      expect(user).to be_valid
    end
  end

  # describe "checking uniqueness of the username and email" do
  #   test_user = User.new()
  #   test_user.username = "tahsin"
  #   test_user.email = "mohsin@gmail.com"
  #   test_user.password = "hello"
  #   user.username = "tahsin"


  #   it "username and email both unique" do
  #     expect(test_user).not_to be_valid
  #   end

  #   # it "email same" do
  #   #   user.username = "tahsin"
  #   #   user.email = "tahsin@gmail.com"
  #   #   user.password = "hello world"
  #   #   test_user.email = "tahsin@gmail.com"
  #   #   expect(test_user).to be_valid
  #   # end

  #   # it "username same" do
  #   #   user.username = "tahsin"
  #   #   user.email = "tahsin@gmail.com"
  #   #   user.password = "hello world"
  #   #   test_user.username = "tahsin"
  #   #   expect(test_user).not_to be_valid
  #   # end
  # end

  describe "validating uniquness" do
    FactoryBot.define do
      factory :user do
        username { Faker::Lorem.characters(number: rand(1..30)) }
        email { Faker::Lorem.characters(number: rand(1..20)) + '@mail.com' }
        password { BCrypt::Password.create('password123') }
      end
    end
    
    user1 = FactoryBot.create(:user)
    user2 = FactoryBot.create(:user)

    it "username and email different" do
      expect(user2).to be_valid
    end

    it "username same" do
      user1.username = user2.username
      expect(user1).not_to be_valid
    end

    user2 = FactoryBot.create(:user)

    it "email same" do
      user2.email = user1.email
      expect(user2).not_to be_valid
    end

  end

  describe "bio and location text length constraints" do
    it "bio length should strictly be 150 or less" do
      user.bio = Faker::Lorem.characters(number: 150)
      expect(user).to be_valid
    end
    it "bio length can not be more than 150" do
      user.bio = Faker::Lorem.characters(number: 151)
      expect(user).not_to be_valid
    end

    it "location should strictly be 50 or less" do
      user.bio = Faker::Lorem.characters(number: 40)
      user.location = Faker::Lorem.characters(number: 50)
      expect(user).to be_valid
    end
    it "location can not be more than 50" do
      user.bio = Faker::Lorem.characters(number: 40)
      user.location = Faker::Lorem.characters(number: 51)
      expect(user).not_to be_valid
    end
  end
end
