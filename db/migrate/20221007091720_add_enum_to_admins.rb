class AddEnumToAdmins < ActiveRecord::Migration[7.0]
    def self.up
          add_column :nurses, :role_cd, :string
    end

    def self.down
          remove_column :nurses, :role_cd
    end
end
