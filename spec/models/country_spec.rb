require 'rails_helper'

RSpec.describe Country, type: :model do
  describe 'Validations' do
    it { should validate_presence_of(:capital) }
    it { should validate_presence_of(:cca2) }
    it { should validate_presence_of(:cca3) }
    it { should validate_presence_of(:flag) }
  end

  describe 'Length Validations' do
    it { should validate_length_of(:capital).is_at_least(2) }
    it { should validate_length_of(:cca2).is_at_most(2) }
    it { should validate_length_of(:flag).is_at_most(2) }
    it { should validate_length_of(:cca3).is_at_most(3) }
  end

  describe 'Associations' do
    it { should have_many(:names).dependent(:destroy) }
  end
end
