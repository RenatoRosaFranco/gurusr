FactoryBot.define do
  factory :category do
    name { "MyString" }
    description { "MyText" }
    slug { "MyString" }
    tags { "MyString" }
    user { nil }
    category { nil }
  end
end
