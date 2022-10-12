class AddExaminationCheckups < ActiveRecord::Migration[7.0]
  def change
     add_column :checkups, :axaminations, :text
  end
end
