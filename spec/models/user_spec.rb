RSpec.describe User, type: :model do
  describe "validations of presence and uniqueness" do
    subject { FactoryBot.create(:user) }
    it { is_expected.to validate_presence_of(:username) }
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_presence_of(:password) }
    it { is_expected.to validate_uniqueness_of(:username).case_insensitive }
    it { is_expected.to validate_uniqueness_of(:email).case_insensitive }
  end

  describe "validation of email formats" do
    it { is_expected.to allow_value('user@example.com').for(:email) }
    it { is_expected.to allow_value('user.name@example.co.uk').for(:email) }
    it { is_expected.to_not allow_value('@example.com').for(:email) }
    it { is_expected.to_not allow_value('user@example.').for(:email) }
    it { is_expected.to_not allow_value('userexample.com').for(:email) }
    it { is_expected.to_not allow_value('user').for(:email) }
    it { is_expected.to_not allow_value('user@.com').for(:email) }
    it { is_expected.to_not allow_value('@example.com').for(:email) }
    it { is_expected.to_not allow_value('').for(:email) }
    it { is_expected.to_not allow_value(nil).for(:email) }
  end
end
