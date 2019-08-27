class AddAppointmentCountToOffices < ActiveRecord::Migration[5.1]
  def change
    add_column :offices, :appointments_count, :integer
  end
end
