

FactoryGirl.define do
  factory :user do
    
  end

  factory(:day) do
    datefield('03/24/1985')
    date('Thursday')
  end

  factory(:hour) do
    activity('Baking Cupcakes')
    day
  end

end
