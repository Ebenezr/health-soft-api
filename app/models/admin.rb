class Admin < ApplicationRecord

    has_one_attached :featured_image

    as_enum :role, [:admin, :doctor, :nurse], map: :string
    after_initialize :set_default_role, :if => :new_record?

    def set_default_role
        self.role ||= :admin
    end


    has_secure_password
end
