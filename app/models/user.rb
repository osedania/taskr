class User < ApplicationRecord
  PERMITTED_ROLES = ['requester', 'contractor']

  has_one :bid, as: :contractor
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates_presence_of :first_name, :last_name, :encrypted_password
  validates_presence_of :address, :city, :state, :zip_code, :country,  if: :contractor?

  validates_presence_of :role
  validates :role, inclusion: { in: PERMITTED_ROLES,
                               message: '%{value} is not permitted'}

  def requester?
    self.role == 'requester'
  end

  def contractor?
    self.role == 'contractor'
  end
end
