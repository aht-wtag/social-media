RSpec.describe Friendship, type: :model do

  describe "associations" do
    it { is_expected.to belong_to(:user) }
    it { is_expected.to belong_to(:friend).class_name('User') }
end

  describe "has a valid factory" do
    it "valid factory" do
      expect(FactoryBot.create(:friendship)).to be_valid
    end
  end
end
