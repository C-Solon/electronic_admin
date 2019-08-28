class CreateAppointments < ActiveRecord::Migration[5.1]
  def change
    create_table :appointments do |t|
      t.integer :office_id
      t.integer :patient_id
      t.integer :professional_id
      t.integer :charge_id
      t.text :notes
      t.time :time_slot

      t.timestamps
    end
  end
end
