class AddColumsToPatients < ActiveRecord::Migration[7.0]
  def change

    add_column :patients, :phone, :integer
    add_column :patients, :email, :string
    add_column :patients, :address,  :string
    add_column :patients, :county,  :string
    add_column :patients, :estate,  :string
  

  
  end
end
