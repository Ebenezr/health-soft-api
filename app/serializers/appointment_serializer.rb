class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :patient_type, :serial_no, :appointment_date, :appointment_time
end
