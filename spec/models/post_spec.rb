RSpec.describe Post, type: :model do
    subject { FactoryBot.create(:post) }
    describe "validation" do
        it { is_expected.to validate_presence_of(:title) }
        it { is_expected.to validate_presence_of(:body) }
    end
    describe "belongs to association" do
        it { is_expected.to belong_to(:user) }
    end
end
