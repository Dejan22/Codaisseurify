FactoryBot.define do
  factory :artist do
    name          { Faker::Name.name }
    genre         "Jazz"

  end
end
