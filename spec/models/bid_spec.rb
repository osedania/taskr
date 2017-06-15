require 'rails_helper'

RSpec.describe Bid, type: :model do
  describe 'DB table Bid' do
    it { is_expected.to have_db_column :id }
    it { is_expected.to have_db_column :quote }
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of :quote }
  end

  describe 'Associations' do
    it { is_expected.to belong_to :task }
    it { is_expected.to belong_to :user }
  end

  describe 'Factory' do
    it 'should have valid Factory' do
      expect(FactoryGirl.create(:bid)).to be_valid
    end
  end
end
