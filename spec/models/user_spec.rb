require "rails_helper"
RSpec.describe User,type: :model do
  user = User.new()
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
end
