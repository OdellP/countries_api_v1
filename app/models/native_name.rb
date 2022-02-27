class NativeName < ApplicationRecord
  belongs_to :name

  validates :common, :official, presence: true
end
