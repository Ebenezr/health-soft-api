class NurseSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :phone, :email, :designation
end
