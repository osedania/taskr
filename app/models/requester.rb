class Requester < ApplicationRecord
  has_many :tasks
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates_presence_of :email, :encrypted_password, :first_name, :last_name
end
