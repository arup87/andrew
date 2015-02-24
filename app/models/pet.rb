class Pet < ActiveRecord::Base
  belongs_to :customer
  has_many :appointments

  MAX_NAME_LENGTH = 35
  validates :name, :breed, length: { maximum: MAX_NAME_LENGTH }, allow_blank: false
  #validates :age, :weight, :last_visit, presence: true
  #validates :type, inclusion: { in: %w(dog cat bird), message: "%{value} only dog, cat or bird allowed" }
end


