FactoryGirl.define do
  factory(:tag) do
    name('Shopping')
  end

  factory(:post) do
    author('you')
    title('fake title')
    body('random assortment of words')
  end

  factory :user do
    email 'test@example.com'
    password 'f4k3p455w0rd'
    admin true
 end


end
