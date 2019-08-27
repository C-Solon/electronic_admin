class AddAppointmentCountToPatients < ActiveRecord::Migration[5.1]
  def change
    add_column :patients, :appointments_count, :integer
  end
end
