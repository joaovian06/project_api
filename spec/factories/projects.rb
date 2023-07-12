FactoryBot.define do
  factory :project do
    name { Faker::App.unique.name }
    link { Faker::Company.logo }
    repository_link { Faker::Company.logo }
    description { Faker::Company.catch_phrase }
  end
end
