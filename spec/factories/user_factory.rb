FactoryGirl.define do
  sequence(:email) { |n| "user#{n}@example.com" }

  factory :user do
    email 
    password "1234567890"
    first_name "Benjie"
    last_name "Dayco"
    admin false
  end

  factory :admin, class: User do
    email 
    password "qwertyuiop"
    first_name "Admin"
    last_name "User"
    admin true
  end
end
