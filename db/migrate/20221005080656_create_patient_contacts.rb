class CreatePatientContacts < ActiveRecord::Migration[7.0]
  def change
    create_table :patient_contacts do |t|
      t.references :patient, null: false, foreign_key: true, index: true
      t.integer :phone
      t.string :email
      t.string :address
      t.string :county
      t.string :estate
      t.text :note

      t.timestamps
    end
  end
end
