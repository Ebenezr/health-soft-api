class AddEnumToDoctor < ActiveRecord::Migration[7.0]
    def self.up
        add_column :doctors, :role_cd, :string
    end

    def self.down
          remove_column :doctors, :role_cd
    end
 
end
