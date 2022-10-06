class Nurse < ApplicationRecord
    
    has_many :appointments
    
    validates :first_name,:last_name, :email, :designation, :password, presence: true
    validates :email, uniqueness: true
    validates :password, 
        length:  {minimum: 6} , 
        if: -> {new_record? || !password.nil?}
    validates :email, format: {with: URI::MailTo::EMAIL_REGEXP }
    validates :phone, :presence => true,
                 :numericality => true,
                 :length => { :minimum => 9, :maximum => 15 }

    has_secure_password
end
