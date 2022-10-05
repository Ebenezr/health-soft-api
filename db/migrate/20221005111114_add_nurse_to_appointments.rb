class AddNurseToAppointments < ActiveRecord::Migration[7.0]
  def change
    add_reference :appointments, :nurse, null: false, foreign_key: true
  end
end
