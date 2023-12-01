FactoryBot.define do
  factory :appointment do
    when_at { "2023-12-01 17:14:51" }
    user_id { 1 }
    treatment { "" }
  end
end
