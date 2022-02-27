# frozen_string_literal: true

class Country < ApplicationRecord
  validates :capital, presence: true, length: { minimum: 2 }
  validates :cca2, :flag, presence: true, length: { maximum: 2 }
  validates :cca3, presence: true, length: { maximum: 3 }

  has_many :names, dependent: :destroy
end
