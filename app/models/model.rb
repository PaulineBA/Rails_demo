class Model < ApplicationRecord

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
validates :email, uniqueness: true, presence: true

validates_confirmation_of :password
end