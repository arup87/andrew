class Customer < ActiveRecord::Base
  has_many :pets
  has_many :appointments, through: :pets
end
