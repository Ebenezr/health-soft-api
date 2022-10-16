class Admin < ApplicationRecord

    has_one_attached :featured_image

    before_validation :downcase_email

      # downcase email if upercase
    def downcase_email
        email.try(:downcase!)
    end


    as_enum :role, [:admin, :doctor, :nurse], map: :string
    after_initialize :set_default_role, :if => :new_record?

    def set_default_role
        self.role ||= :admin
    end

    validates :first_name,:last_name, :email, :designation, presence: true
    validates :email, uniqueness: true

    validates :email, format: {with: URI::MailTo::EMAIL_REGEXP }
    validates :phone, :presence => true,
                 :numericality => true,
                 :length => { :minimum => 9, :maximum => 15 }

     # password format validations
    PASSWORD_FORMAT = /\A
    (?=.*[A-Z]) # Must contain an uppercase character
    (?=.*[a-z]) # Must contain a lowercase character
    (?=.*\d) # Must contain a digit
    (?=.*[[:^alnum:]]) # Must contain a symbol
  /x

    # validates :password, presence: false, unless:-> {id.blank?}
    validates :password, length:  {minimum: 6}, unless: ->{ password.blank? } ,
             if:  -> { new_record? || !password.blank? },
             format: { with: PASSWORD_FORMAT, :message => 'Password must include: 1 uppercase, 1 lowercase, 1 digit and 1 special character' }, 
             unless: ->{ password.blank? }
    
    #checks password cornfirmation
    validates :password, confirmation: true
    validates :password_confirmation, confirmation: true


    has_secure_password
end
