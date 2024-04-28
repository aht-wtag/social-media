FactoryBot.define do
    factory :post do
      user
      title { FFaker::Lorem.paragraph }
      body { FFaker::Lorem.paragraph }
    end
end
