FactoryBot.define do
  factory :valid_post do
    title { Faker::Lorem.sentence }
    body { Faker::Lorem.paragraph }
  end
  
  factory :invalid_post do
    title { nil }
    body { nil }
  end

end
