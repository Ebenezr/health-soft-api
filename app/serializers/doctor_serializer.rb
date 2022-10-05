class DoctorSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :phone, :email, :password_digest, :designation
end
