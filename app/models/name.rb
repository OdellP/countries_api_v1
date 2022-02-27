class Name < ApplicationRecord
  belongs_to :country, optional: true
  has_many :native_names, dependent: :destroy

  validates :common, :official, presence: true
end
