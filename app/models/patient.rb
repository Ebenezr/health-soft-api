class Patient < ApplicationRecord
    has_many :appointments
    has_many :doctors, through: :appointments
    
    has_many :patient_contacts
    has_many :patient_vitals
end
