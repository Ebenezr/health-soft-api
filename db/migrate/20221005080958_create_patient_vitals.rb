class CreatePatientVitals < ActiveRecord::Migration[7.0]
  def change
    create_table :patient_vitals do |t|
      t.references :patient, null: false, foreign_key: true, index: true
      t.integer :bp_systolic
      t.integer :bp_diastolic
      t.integer :temperature
      t.text :notes

      t.timestamps
    end
  end
end
