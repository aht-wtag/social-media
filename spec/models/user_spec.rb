require "rails_helper"
RSpec.describe User,type: :model do
    user = User.new()
  describe "validates username" do
    it "validates presence of username" do
        expect(user).not_to be_valid
    end
  end
end
