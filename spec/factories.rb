

FactoryGirl.define do

  factory(:day) do
    datefield('03/24/1985')
    date('Thursday')
  end

  factory(:hour) do
    activity('Baking Cupcakes')
    day
  end

end
