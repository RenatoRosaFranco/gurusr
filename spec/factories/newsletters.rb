FactoryBot.define do
  factory :newsletter do
    name { "MyString" }
    email { "MyString" }
    active { false }
    token { "MyString" }
    signup_date { "2019-02-01" }
  end
end
