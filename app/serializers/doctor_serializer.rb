class DoctorSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :phone, :email, :designation, :role, :fullname

  def fullname
    "#{object.first_name} #{object.last_name}"
  end
end
