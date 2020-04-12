FactoryBot.define do
  factory :user do
    first_name "MyString"
    last_name "MyString"
    email "MyString"
    role "MyString"
    password_digest "MyString"
    band nil
    active false
  end
end
