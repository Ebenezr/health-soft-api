class PatientContact < ApplicationRecord
  belongs_to :patient

  validates :patient_id, :email, :county,  presence: true
end
