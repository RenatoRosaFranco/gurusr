FactoryBot.define do
  factory :post do
    title { "MyString" }
    description { "MyText" }
    content { "MyText" }
    slug { "MyString" }
    tags { "MyString" }
    category { nil }
    user { nil }
    published { false }
  end
end
