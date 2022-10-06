class AddNationalIdToPatients < ActiveRecord::Migration[7.0]
  def change
    add_column :patients, :national_id, :integer
  end
end
