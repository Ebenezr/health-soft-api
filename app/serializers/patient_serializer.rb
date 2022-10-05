class PatientSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :gender, :dob, :marital_status
end
