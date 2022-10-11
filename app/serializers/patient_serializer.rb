class PatientSerializer < ActiveModel::Serializer
  attributes :id, :national_id,:first_name, :last_name, :gender, :dob, :marital_status, :fullname, :phone, :email, :address, :county, :estate


    def fullname
    "#{object.first_name} #{object.last_name}"
  end
end
