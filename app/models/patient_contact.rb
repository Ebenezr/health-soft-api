class PatientContact < ApplicationRecord
  belongs_to :patient

  validates :email, :county,  presence: true
  validates :email, format: {with: URI::MailTo::EMAIL_REGEXP }
  validates :phone, :presence => true,
                 :numericality => true,
                 :length => { :minimum => 9, :maximum => 15 }
end
