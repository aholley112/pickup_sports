require 'rails_helper'

RSpec.describe User, type: :model do

  context 'validation tests' do
    it 'is not valid without a first name' do
      user = build(:user, first_name: nil);
      expect(user).to_not be_valid
    end
  end
end
