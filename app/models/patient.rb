class Patient < ApplicationRecord
    has_many :appointments
    has_many :doctors, through: :appointments

    has_many :patient_contacts
    has_many :patient_vitals

    validates :first_name, :last_name, :marital_status, :gender, :dob, presence: true
    validates :gender, inclusion: {in: ['male','female']}
end
