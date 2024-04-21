require "rails_helper"
require "spec_helper"

RSpec.describe User, type: :model do
  describe "validations of presence" do
    subject{ FactoryBot.create(:user) }
    it "validates presence" do
      should validate_presence_of(:username)
      should validate_presence_of(:email)
      should validate_presence_of(:password)
    end
    subject { FactoryBot.create(:user) }
    it { should validate_uniqueness_of(:username).case_insensitive }
    it { should validate_uniqueness_of(:email).case_insensitive }
  end
end
