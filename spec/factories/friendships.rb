FactoryBot.define do
    factory :friendship do
        association :user
        association :friend, factory: :user
        friend_id { FactoryBot.create(:user).id }
        user_id { FactoryBot.create(:user).id }
    end
end