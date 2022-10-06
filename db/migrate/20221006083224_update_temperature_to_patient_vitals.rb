class UpdateTemperatureToPatientVitals < ActiveRecord::Migration[7.0]
  def change
     change_column :patient_vitals, :temperature, :decimal, :precision => 30, :scale => 1
  end
end
