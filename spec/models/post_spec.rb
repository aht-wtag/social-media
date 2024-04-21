require "rails_helper"
require "spec_helper"

RSpec.describe Post type: :model do
    post1 = Post.create()
    describe "validates title and body" do
        it "validates presence of title" do
            should validate_presence_of(:title)
        end

        it "validates presence of body" do
            should validate_presence_of(:body)
        end

        
    end
end