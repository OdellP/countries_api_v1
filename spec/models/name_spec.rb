require 'rails_helper'

RSpec.describe Name, type: :model do
  describe 'Validations' do
    it { should validate_presence_of(:common) }
    it { should validate_presence_of(:official) }
  end

  describe 'Associations' do
    it { should belong_to(:country).optional }
    it { should have_many(:native_names).dependent(:destroy) }
  end
end
