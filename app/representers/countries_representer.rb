# frozen_string_literal: true

class CountriesRepresenter
  def initialize(countries)
    @countries = countries
  end

  def as_json
    countries.map do |country|
      {
        name: {
          common: common_name(country),
          official: official_name(country),
          native_name: {
            official: official_native_name(country),
            common: common_native_name(country)
          }
        },
        capital: country.capital,
        cca2: country.cca2,
        cca3: country.cca3,
        ccn3: country.ccn3,
        cioc: country.cioc,
        independent: country.independent,
        status: country.status,
        un_member: country.un_member,
        flag: country.flag
      }
    end
  end

  private

  attr_reader :countries

  def common_name(country)
    return 'Unvailable' if country.names.blank?

    country.names.first.common
  end

  def official_name(country)
    return 'Unvailable' if country.names.blank?

    country.names.first.official
  end

  def official_native_name(country)
    return 'Unvailable' if country.names.blank?

    country.names.first.native_names.first&.official
  end

  def common_native_name(country)
    return 'Unvailable' if country.names.blank?

    country.names.first.native_names.first&.common
  end
end
