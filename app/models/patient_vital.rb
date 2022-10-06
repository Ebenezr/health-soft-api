class PatientVital < ApplicationRecord
  belongs_to :patient

  validates :patient_id, :temperature, presence: true
  validates :temperature, :inclusion => 34..38
  validates :bp_diastolic, :inclusion => 70..100
  validates :bp_systolic, :inclusion => 100..150
end
