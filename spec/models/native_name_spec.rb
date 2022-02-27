require 'rails_helper'

RSpec.describe NativeName, type: :model do
  describe 'Validations' do
    it { should validate_presence_of(:common) }
    it { should validate_presence_of(:official) }
  end

  describe 'Associations' do
    it { should belong_to(:name) }
  end
end
