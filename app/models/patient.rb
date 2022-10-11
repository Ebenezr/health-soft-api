class Patient < ApplicationRecord
    has_many :appointments, dependent: :destroy
    has_many :doctors, through: :appointments

   
    has_many :patient_vitals, dependent: :destroy
    accepts_nested_attributes_for :patient_vitals, reject_if: :all_blank, allow_destroy: true

    validates :first_name, :last_name, :marital_status, :gender, :dob, presence: true
    validates :gender, inclusion: {in: ['Male','Female']}
    validates  :national_id, uniqueness: true, presence: true   
    validates :email, :county,  presence: true
    validates :email, format: {with: URI::MailTo::EMAIL_REGEXP }
    validates :phone, :presence => true,
                 :numericality => true,
                 :length => { :minimum => 9, :maximum => 15 }
end
