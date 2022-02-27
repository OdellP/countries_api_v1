require 'faker'

50.times do
  Country.create!(
    capital: Faker::Address.country,
    cca2: Faker::Address.country_code,
    cca3: Faker::Address.country_code_long,
    flag: Faker::Address.country_code,
    ccn3: Faker::Lorem.characters(number: 3),
    cioc: Faker::Address.country_code_long,
    independent: true,
    status: 'officially-assigned',
    un_member: true
  ).names.create!(
    official: Faker::Address.country_by_code(code: Faker::Address.country_code),
    common: Faker::Address.country_by_code(code: Faker::Address.country_code)
  ).native_names.create!(
    official: Faker::Address.country_by_code(code: Faker::Address.country_code),
    common: Faker::Address.country_by_code(code: Faker::Address.country_code)
  )
end
