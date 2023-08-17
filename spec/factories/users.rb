FactoryBot.define do
    factory :user do
        sequence(:email) { |n| "person-#{n}@example.com" }
        sequence(:account_id){|n|n}
        password { '123greetings' }
  
        trait :canDel do
          account_id { 1 }
        end
        trait :cantDel do
          account_id { 0 }
        end
    end
  end