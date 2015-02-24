class Vet < ActiveRecord::Base
  has_many :appointments
  
  MAX_NAME_LENGTH = 35
  ZIP_CODE_LENGTH = 5
  MIN_PRACTICE_YEAR = 1
  MAX_PRACTICE_YEAR = 100
  
  validates :name, length: { maximum: MAX_NAME_LENGTH }, allow_blank: false
  validates :zip, length: { is: ZIP_CODE_LENGTH }
  validates :years_in_practice, numericality: { less_than_or_equal_to: MAX_PRACTICE_YEAR, greater_than_or_equal_to: MIN_PRACTICE_YEAR }
end
