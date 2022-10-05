class Appointment < ApplicationRecord
    belongs_to :doctor, -> { order "appointment_date DESC" }
    belongs_to :patient


end
