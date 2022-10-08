class PatientSerializer < ActiveModel::Serializer
  attributes :id, :national_id,:first_name, :last_name, :gender, :dob, :marital_status, :fullname
  has_many :patient_contacts

    def fullname
    "#{object.first_name} #{object.last_name}"
  end
end
