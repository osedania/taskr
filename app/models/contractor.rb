class Contractor < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_one :bid
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable
  validates_presence_of :email,
                        :encrypted_password,
                        :first_name, :last_name,
                        :address,
                        :city,
                        :state,
                        :zip_code,
                        :country
end
