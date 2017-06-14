class User < ApplicationRecord
  has_one :bid
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates_presence_of :first_name, :last_name, :encrypted_password
  validates_presence_of :address, :city, :state, :zip_code, :country,  if: :contractor?

  def requester?
    self.requester == 'requester'
  end

  def contractor?
    self.role == 'contractor'
  end
end
