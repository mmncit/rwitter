FactoryBot.define do
  factory :user do
    email { Faker::Internet.email } # generate a fake email address
    password { Faker::Internet.password } # generates a fake password
  end
end
