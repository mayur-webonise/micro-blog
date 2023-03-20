FactoryBot.define do
  factory :post do
    title {"Ruby"}
    content {"Ruby is a simple language"}
    association :auther
  end
end
