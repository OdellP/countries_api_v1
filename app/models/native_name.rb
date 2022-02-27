# frozen_string_literal: true

class NativeName < ApplicationRecord
  belongs_to :name

  validates :common, :official, presence: true
  validates :common, :official, uniqueness: true
end
