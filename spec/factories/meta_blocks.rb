# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :meta_block do
    title 'Meta title'
    description 'Meta description'
    keywords 'keyword 1, keyword 2'
    javascript nil
    fb_title 'Title for Facebook'
    fb_description 'Description for Facebook'
  end
end
