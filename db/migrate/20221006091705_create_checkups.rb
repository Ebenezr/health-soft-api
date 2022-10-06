class CreateCheckups < ActiveRecord::Migration[7.0]
  def self.up
    create_table :checkups do |t|
      t.references :patient, null: false, foreign_key: true
      t.references :doctor, null: false, foreign_key: true
      t.bigint :visit_id
      t.text :symptoms
      t.string :diagnosis
      t.text :advice
      t.date :checkup_date
      t.date :next_visit
      t.text :comment
      t.text :hpi


      t.timestamps
    end

    execute "CREATE SEQUENCE checkups_visit_id_seq START 1001"
  end
  def self.down
    drop_table :checkups

    execute "DROP SEQUENCE checkups_visit_id_seq"
  end
end
