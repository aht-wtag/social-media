FactoryBot.define do
    factory :friendships do
        association :user
        association :friend, factory: :user
    end
end