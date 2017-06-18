class Bid < ApplicationRecord
  belongs_to :user
  belongs_to :task
  validates_presence_of :quote
  validates :terms_of_service, acceptance: { message: 'Please confirm you have read the Terms and Conditions' }
end
