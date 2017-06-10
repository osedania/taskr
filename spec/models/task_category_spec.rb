require 'rails_helper'

RSpec.describe TaskCategory, type: :model do
  describe 'DB table task_categories' do
    it { is_expected.to have_db_column :name }
  end

  describe 'Factory' do
    it 'should have valid Factory' do
      expect(FactoryGirl.create(:task_category)).to be_valid
    end
  end
end
