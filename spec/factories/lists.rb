FactoryBot.define do
  factory :list do
    title                 { "資料作成" }
    day                   { 2021/05/01 }
    explain {Faker::Lorem.sentence}
    association :user

  end
end
