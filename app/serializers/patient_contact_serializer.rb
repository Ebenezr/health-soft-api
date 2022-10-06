class PatientContactSerializer < ActiveModel::Serializer
  attributes :patient_id, :phone, :email, :address, :county, :estate
end
