class CheckupSerializer < ActiveModel::Serializer
  attributes :id, :patient_id,:doctor_id, :visit_id, :symptoms, :diagnosis, :advice, :checkup_date, :next_visit, :comment, :hpi, :examinations
  has_one :patient
  has_one :doctor
end
