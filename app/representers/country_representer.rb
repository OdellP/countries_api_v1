# frozen_string_literal: true

class CountryRepresenter
  def initialize(country)
    @country = country
  end

  def as_json
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

  private

  attr_reader :country
end