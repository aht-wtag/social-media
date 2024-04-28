RSpec.describe Post, type: :model do
    subject { FactoryBot.create(:post) }
    describe "validation" do
        it { is_expected.to validate_presence_of(:title) }
        it { is_expected.to validate_presence_of(:body) }

        it "is invalid with null title" do
            subject.title = nil
            expect(subject).to_not be_valid
        end
        
        it "is invalid with null body" do
            subject.body = nil
            expect(subject).to_not be_valid
        end
    end
    
    describe "belongs to association" do
        it { is_expected.to belong_to(:user) }
    end
end
