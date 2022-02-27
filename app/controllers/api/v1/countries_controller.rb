# frozen_string_literal: true
module Api
  module V1
    class CountriesController < ApplicationController
      def index
        countries = Country.all

        render json: CountriesRepresenter.new(countries).as_json
      end

      def create
        country = Country.new(country_params)

        if country.save
          render json: country, status: :created
        else
          render json: country.errors, status: :unprocessable_entity
        end
      end

      def show
        country = Country.find(params[:id])

        if country
          render json: CountryRepresenter.new(country).as_json
        else
          render json: { message: "Could not find country" }, status: :unprocessable_entity
        end
      end

      def destroy
        Country.find(params[:id]).destroy!

        head :no_content
      end

      private

      def country_params
        params.require(:country).permit(:name, :capital, :cca2, :cca3, :flag)
      end
    end
  end
end