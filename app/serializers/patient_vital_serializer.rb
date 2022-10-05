class PatientVitalSerializer < ActiveModel::Serializer
  attributes :id, :bp_systolic, :bp_diastolic, :temperature, :notes
  has_one :patient
end
