FactoryBot.define do
  factory :paper do
    title {"COMPUTING MACHINERY AND INTELLIGENCE"}
    venue {"Potsdam"}
    year {1950}
    authors {build_list :author, 1}
  end
end