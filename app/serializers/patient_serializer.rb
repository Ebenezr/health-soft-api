class PatientSerializer < ActiveModel::Serializer
  attributes :id, :national_id,:first_name, :last_name, :gender, :dob, :marital_status
  has_many :patient_contacts
end
