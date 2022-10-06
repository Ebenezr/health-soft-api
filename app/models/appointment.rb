class Appointment < ApplicationRecord
    belongs_to :doctor
    belongs_to :patient
    belongs_to :nurse


    validates :patient_id, :doctor_id, :appointment_date, :patient_type, :appointment_time, presence: true
    validates :patient_type, inclusion: {in: ['in-patient','out-patient']}
end