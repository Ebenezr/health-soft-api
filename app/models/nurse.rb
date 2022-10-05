class Nurse < ApplicationRecord
    
    has_many :appointments
    
    validates :first_name,:last_name, :phone, :email, :designation, :password, presence: true
    validates :email, uniqueness: true
    validates :password, 
        length:  {minimum: 6} , 
        if: -> {new_record? || !password.nil?}
    validates :email, format: {with: URI::MailTo::EMAIL_REGEXP }
    

    has_secure_password
end
