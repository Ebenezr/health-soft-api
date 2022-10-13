class Admin < ApplicationRecord

    has_one_attached :featured_image

    as_enum :role, [:admin, :doctor, :nurse], map: :string
    after_initialize :set_default_role, :if => :new_record?

    def set_default_role
        self.role ||= :admin
    end

    validates :first_name,:last_name, :email, :designation, :password, presence: true
    validates :email, uniqueness: true
    validates :password, length:  {minimum: 6} 
    validates :email, format: {with: URI::MailTo::EMAIL_REGEXP }
    validates :phone, :presence => true,
                 :numericality => true,
                 :length => { :minimum => 9, :maximum => 15 }


    has_secure_password
end
