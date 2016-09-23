

FactoryGirl.define do

  factory :user do
    sequence(:name)   { |n| "Person #{n}" }
    sequence(:email)      { |n| "person_#{n}@example.com" }
    password "foobar"

  end
  # factory(:user) do
  #   name('Tom Sellec')
  #   email('tom@sellec.com')
  #   password('goodpassword1')
  # end

  factory(:day) do
    datefield('03/24/1985')
    date('Thursday')
    user
  end

  factory(:activity) do
    activity('Afternoon')
    day
  end

  factory(:tag) do
    name('Baking Cupcakes')
  end
end
