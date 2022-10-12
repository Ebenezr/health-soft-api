class RenameExaminationCheckups < ActiveRecord::Migration[7.0]
  def change
    rename_column :checkups, :axaminations, :examinations
  end
end
