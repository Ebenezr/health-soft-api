class Appointment < ApplicationRecord
    belongs_to :doctor
    belongs_to :patient
    belongs_to :nurse


    validates :patient_id, :doctor_id, :appointment_date, :appointment_time, presence: true
end
