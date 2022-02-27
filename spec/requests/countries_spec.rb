# frozen_string_literal: true

require 'rails_helper'

describe 'Countries API', type: :request do
  describe 'GET /countries' do
    before do
      FactoryBot.create(:country, name: 'United States', capital: 'Washington DC', cca2: 'US', cca3: 'USA', flag: 'US')
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
             params: { country: { name: 'Mexico', capital: 'Mexico City', cca2: 'ME', cca3: 'MEX', flag: 'ME' } }
      end.to change { Country.count }.from(0).to(1)

      expect(response).to have_http_status(:created)
    end
  end

  describe 'DELETE /countries/:id' do
    let!(:country) { FactoryBot.create(:country, id: 1, name: 'United States', capital: 'Washington DC', cca2: 'US', cca3: 'USA',
                                flag: 'US') }

    it 'deletes a Country' do
      expect {
        delete "/api/v1/countries/#{country.id}"
      }.to change { Country.count }.from(1).to(0)

      expect(response).to have_http_status(:no_content)
    end
  end
end
