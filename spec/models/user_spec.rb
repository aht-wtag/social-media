require "rails_helper"
require "spec_helper"
require 'ffaker'

RSpec.describe User, type: :model do
  user = User.create()
  
  describe "validates username, password and email" do
    it "validates presence of username, password, email" do
      expect(user).not_to be_valid
    end

    it "validates presence of password, email" do
      user.username = "tahsin"
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

  describe "validating uniquness" do
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
end
