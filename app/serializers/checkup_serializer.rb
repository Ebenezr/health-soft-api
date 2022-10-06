class CheckupSerializer < ActiveModel::Serializer
  attributes :id, :visit_id, :symptoms, :diagnosis, :advice, :checkup_date, :next_visit, :comment, :hpi
  has_one :patient
  has_one :doctor
end
