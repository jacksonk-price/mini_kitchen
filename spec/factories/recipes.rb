FactoryBot.define do
  factory :recipe do
    association :user
    title { "Test Recipe" }
    cook_time { "30 minutes" }
    servings { 4 }
    visibility { Recipe.visibilities.values.sample }
  end
end