class NextAppointment < ActiveRecord::Base
  belongs_to :appointment
  belongs_to :animal
end
