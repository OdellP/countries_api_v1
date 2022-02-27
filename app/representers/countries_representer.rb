# frozen_string_literal: true

class CountriesRepresenter
  def initialize(countries)
    @countries = countries
  end

  def as_json
    countries.map do |country|
      {
        id: country.id,
        name: {
          common: country.names.first.common,
          official: country.names.first.official,
          native_name: {
            official: country.names.first.native_names.first.official,
            common: country.names.first.native_names.first.common
          }
        },
        capital: country.capital,
        cca2: country.cca2,
        cca3: country.cca3,
        flag: country.flag
      }
    end
  end

  private

  attr_reader :countries
end