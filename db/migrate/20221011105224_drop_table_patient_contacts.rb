class DropTablePatientContacts < ActiveRecord::Migration[7.0]
  def up
    drop_table :patient_contacts
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
