RSpec.describe Post, type: :model do
    let(:post_with_empty_strings) { FactoryBot.build(:post, title: '', body: '') }
    describe "validations" do
        it { is_expected.to validate_presence_of(:title) }
        it { is_expected.to validate_presence_of(:body) }

        it "is invalid without a title" do
            expect(post_with_empty_strings).to_not be_valid
            expect(post_with_empty_strings.errors[:title]).to include("can't be blank")
        end

        it "is invalid without a body" do
            expect(post_with_empty_strings).to_not be_valid
            expect(post_with_empty_strings.errors[:body]).to include("can't be blank")
          end
    end
    
    describe "associations" do
        it { is_expected.to belong_to(:user) }
    end
end
