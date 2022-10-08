class Doctor < ApplicationRecord


     as_enum :role, [:admin, :doctor, :nurse], map: :string
     after_initialize :set_default_role, :if => :new_record?
    
    def set_default_role
        self.role ||= :doctor
    end

    has_many :appointments, -> { order "appointment_date DESC" }, dependent: :destroy
    has_many :patients ,through: :appointments

    validates :first_name,:last_name, :email, :designation, :password, presence: true
    validates :email, uniqueness: true
    validates :email, format: {with: URI::MailTo::EMAIL_REGEXP }
    validates :password, 
        length:  {minimum: 6} , 
        if: -> {new_record? || !password.nil?}
    validates :phone, :presence => true,
                 :numericality => true,
                 :length => { :minimum => 9, :maximum => 15 }

    has_secure_password

end
