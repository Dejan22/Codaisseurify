FactoryBot.define do
  factory :song do

    title         "Autumn in New York"
    album         "The Complete Verve Master Takes"
    release_date  "01.01.2001"

    artist_id       { build(:artist) }


  end
end
