

FactoryGirl.define do
  factory(:user) do
    name('Tom Sellec')
    email('tom@sellec.com')
    password('goodpassword1')
  end

  factory(:day) do
    datefield('03/24/1985')
    date('Thursday')
    user
  end

  factory(:activity) do
    activity('Baking Cupcakes')
    day
  end

  factory(:tag) do
    name('Clean')
  end
end
