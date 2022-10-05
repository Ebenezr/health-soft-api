class Doctor < ApplicationRecord
    has_many :appointments
    has_many :patients ,through: :appointments

    validates :first_name,:last_name, :phone, :email, :designation, :password, presence: true
    validates :email, uniqueness: true
    validate :email, format: {with: URI::MailTo::EMAIL_REGEXP }
    validates :password, 
        length:  {minimum: 6} , 
        if: -> {new_record? || !password.nil?}
    end

    has_secure_password

end
