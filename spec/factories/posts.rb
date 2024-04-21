FactoryBot.define do
    factory :post do
      association :user
      title { FFaker::Lorem.paragraph }
      body { FFaker::Lorem.paragraph }
    end
end
