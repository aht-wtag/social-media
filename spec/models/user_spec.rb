require "rails_helper"
require "spec_helper"

RSpec.describe User, type: :model do
  describe "validations of presence and uniqueness" do
    it { is_expected.to validate_presence_of(:username) }
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_presence_of(:password) }
    subject { FactoryBot.create(:user) }
    it { is_expected.to validate_uniqueness_of(:username).case_insensitive }
    it { is_expected.to validate_uniqueness_of(:email).case_insensitive }
  end
end
