require "rails_helper"
require "spec_helper"

RSpec.describe Post, type: :model do
    describe "validation" do
        subject { FactoryBot.create(:post) }
        it { is_expected.to validate_presence_of(:title) }
        it { is_expected.to validate_presence_of(:body) }
    end
end