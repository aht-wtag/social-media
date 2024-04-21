require "rails_helper"
require "spec_helper"

RSpec.describe User, type: :model do
 
  describe "validates username, password and email" do
    it "validates presence of username" do
      should validate_presence_of(:username)
      should validate_presence_of(:email)
      should validate_presence_of(:password)
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
