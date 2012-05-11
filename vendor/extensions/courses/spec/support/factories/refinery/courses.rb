
FactoryGirl.define do
  factory :course, :class => Refinery::Courses::Course do
    sequence(:name) { |n| "refinery#{n}" }
  end
end

