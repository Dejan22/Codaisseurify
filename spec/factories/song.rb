FactoryBot.define do
  factory :song do
    
    title     "Autumn in New York"
    album     "The Complete Verve Master Takes"
    release_date     (1950 + Random.rand(60))
    artist    "2003"
  end
end
