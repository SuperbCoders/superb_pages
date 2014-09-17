# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :page do
    sequence(:slug) { |i| "page#{Time.now.to_i}#{i}" }
    sequence(:title) { |i| "Page #{i}" }
    text 'Welcome to SuperbPages!'
  end
end
