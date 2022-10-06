class UpdateNationalIdToPatients < ActiveRecord::Migration[7.0]
  def change
      add_column :patients, :national_id, :integer unless column_exists? :patients, :national_id
      add_index :patients, :national_id, unique: true
  end
end
