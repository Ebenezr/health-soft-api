class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.belongs_to :doctor, index: true, foreign_key: true, null: false
      t.belongs_to :patient, index: true, foreign_key: true, null: false
      t.string :patient_type
      t.integer :serial_no
      t.date :appointment_date
      t.time :appointment_time

      t.timestamps
    end
  end
end
