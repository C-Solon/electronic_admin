class AddAppointmentCountToProfessionals < ActiveRecord::Migration[5.1]
  def change
    add_column :professionals, :appointments_count, :integer
  end
end
