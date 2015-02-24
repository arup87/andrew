class Appointment < ActiveRecord::Base
  belongs_to :pet
  belongs_to :vet

  validates_presence_of :date_of_visit, :pet, :reason_for_visit
  validate :appointment_can_not_be_in_the_past
  
  def appointment_can_not_be_in_the_past
    if date_of_visit == nil
      errors.add(:date_of_visit, "can't be empty")
    elsif date_of_visit < Time.now
      errors.add(:date_of_visit, "can't be in the past")
    end
  end
end
