class PatientVital < ApplicationRecord
  belongs_to :patient

  validates :patient_id, :temperature, presence: true
end
