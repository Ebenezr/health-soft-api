class AddEnumAdmins < ActiveRecord::Migration[7.0]
  def self.up
    add_column :admins, :role_cd, :string
end

def self.down
      remove_column :admins, :role_cd
end
end
