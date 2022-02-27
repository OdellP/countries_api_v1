# frozen_string_literal: true
module Api
  module V1
    class CountriesController < ApplicationController
      def index
        render json: Country.all
      end

      def create
        country = Country.new(country_params)

        if country.save
          render json: country, status: :created
        else
          render json: country.errors, status: :unprocessable_entity
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