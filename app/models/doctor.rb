class Doctor < ApplicationRecord
    has_many :appointments, -> { order "appointment_date DESC" }
    has_many :patients ,through: :appointments

    validates :first_name,:last_name, :phone, :email, :designation, :password, presence: true
    validates :email, uniqueness: true
    validates :email, format: {with: URI::MailTo::EMAIL_REGEXP }
    validates :password, 
        length:  {minimum: 6} , 
        if: -> {new_record? || !password.nil?}

    has_secure_password

end
