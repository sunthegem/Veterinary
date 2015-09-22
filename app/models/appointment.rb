class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :animal

  validates :date, :customer_name, :reason, presence: true
  validate :date_cannot_be_in_the_past
  def date_cannot_be_in_the_past
    if date.present? && date < Date.today
      errors.add(:date_of_visit, "can't be in the past")
    end
  end
end
