class AddColumsToAdmin < ActiveRecord::Migration[7.0]
  def change
    
    add_column :admins, :phone, :integer
    add_column :admins, :designation, :string
   
  end
end
