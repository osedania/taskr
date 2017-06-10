require 'rails_helper'

RSpec.describe Task, type: :model do
    describe 'DB table task' do
      it { is_expected.to have_db_column :name }
      it { is_expected.to have_db_column :description }
      it { is_expected.to have_db_column :location }
      it { is_expected.to have_db_column :minimum_budget }
      it { is_expected.to have_db_column :maximum_budget }
      it { is_expected.to have_db_column :task_category_id}
    end

    describe 'Validations' do
     it { is_expected.to validate_presence_of :name }
     it { is_expected.to validate_presence_of :description }
     it { is_expected.to validate_presence_of :location }
   end

   describe 'Associations' do
    it { is_expected.to belong_to :task_category }
   end

  describe 'Associations' do
   it { is_expected.to belong_to :requester }
  end

  describe 'Factory' do
    it 'should have valid Factory' do
      expect(FactoryGirl.create(:task)).to be_valid
    end
  end
end
