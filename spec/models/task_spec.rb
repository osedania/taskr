require 'rails_helper'

RSpec.describe Task, type: :model do
    describe 'DB table task' do
      it { is_expected.to have_db_column :name }
      it { is_expected.to have_db_column :description }
      it { is_expected.to have_db_column :location }
      it { is_expected.to have_db_column :minimum_budget }
      it { is_expected.to have_db_column :maximum_budget }
      it { is_expected.to have_db_column :task_category_id }
      it { is_expected.to have_db_column :time_frame }
    end

    describe 'Validations' do
     it { is_expected.to validate_presence_of :name }
     it { is_expected.to validate_presence_of :description }
     it { is_expected.to validate_presence_of :location }
     it { is_expected.to validate_presence_of :time_frame }     
   end

   describe 'Associations' do
    it { is_expected.to belong_to :task_category }
    it { is_expected.to have_many :bids }
    it { is_expected.to belong_to :user }
   end

  describe 'Factory' do
    it 'should have valid Factory' do
      expect(FactoryGirl.create(:task)).to be_valid
    end
  end
end
