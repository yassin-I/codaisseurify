FactoryGirl.define do
  factory :song do
    music_genre       "Hiphop"
    producer_name     "Djkhalid"
    image              remote_image_url



    trait :active do
      active true
    end

    trait :inactive do
      active false
    end
  end
end
