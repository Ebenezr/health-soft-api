class Patient < ApplicationRecord
    has_many :appointments, dependent: :destroy
    has_many :doctors, through: :appointments

    has_many :patient_contacts, dependent: :destroy
    accepts_nested_attributes_for :patient_contacts, reject_if: :all_blank, allow_destroy: true
    has_many :patient_vitals, dependent: :destroy
    accepts_nested_attributes_for :patient_vitals, reject_if: :all_blank, allow_destroy: true

    validates :first_name, :last_name, :marital_status, :gender, :dob, presence: true
    validates :gender, inclusion: {in: ['male','female']}
    validates  :national_id, uniqueness: true, presence: true   
end
