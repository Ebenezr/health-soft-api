class Checkup < ApplicationRecord
  belongs_to :patient
  belongs_to :doctor

  validates :patient_id,:doctor_id, presence: true
end
