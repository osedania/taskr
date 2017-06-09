require 'rails_helper'

RSpec.describe TaskCategory, type: :model do
  describe 'DB table task_categories' do
    it { is_expected.to have_db_column :Plumbing }
    it { is_expected.to have_db_column :Electrical }
    it { is_expected.to have_db_column :Computer }
    it { is_expected.to have_db_column :Carpenting }
    it { is_expected.to have_db_column :Cleaning }
  end

  describe 'Factory' do
    it 'should have valid Factory' do
      expect(FactoryGirl.create(:task_categories)).to be_valid
    end
  end
end
