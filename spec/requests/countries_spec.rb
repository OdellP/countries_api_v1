# frozen_string_literal: true

require 'rails_helper'

describe 'Countries API', type: :request do
  describe 'GET /countries' do
    before do
      FactoryBot.create(
        :country,
        capital: 'Washington DC',
        cca2: 'US',
        cca3: 'USA',
        flag: 'US',
        independent: true,
        ccn3: '718',
        cioc: 'USA',
        un_member: true,
        status: 'officially-assigned',
        name_id: 1
        # names: [Name.create(official: "United States", common: "USA")]
      )
    end

    it 'returns all countries' do
      get '/api/v1/countries'

      expect(response).to have_http_status(:success)
      expect(JSON.parse(response.body).size).to eq(1)
    end
  end

  describe 'POST /countries' do
    it 'Create a new Country' do
      expect do
        post '/api/v1/countries',
             params: { country: {capital: 'Mexico City', cca2: 'ME', cca3: 'MEX', cioc: 'MEX', ccn3: 'MEX',
                                  independent: true, un_member: true, status: 'officially-assigned', flag: 'ME' },
                                 name: { official: "Mexico", common: "Mexico" } }
      end.to change { Country.count }.from(0).to(1)

      expect(response).to have_http_status(:created)
    end
  end

  describe 'DELETE /countries/:id' do
    let!(:country) do
      FactoryBot.create(
        :country,
        capital: 'Washington DC',
        cca2: 'US',
        cca3: 'USA',
        flag: 'US',
        independent: true,
        ccn3: '718',
        cioc: 'USA',
        un_member: true,
        status: 'officially-assigned'
      )
    end

    it 'deletes a Country' do
      expect do
        delete "/api/v1/countries/#{country.id}"
      end.to change { Country.count }.from(1).to(0)

      expect(response).to have_http_status(:no_content)
    end
  end
end
