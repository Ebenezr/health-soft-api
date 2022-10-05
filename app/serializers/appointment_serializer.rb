class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :patient_type, :serial_no, :appointment_date, :appointment_time, :patient_type, :doctor_id, :patient_id, :nurse_id
end
