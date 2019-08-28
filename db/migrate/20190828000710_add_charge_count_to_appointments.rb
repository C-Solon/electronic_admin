class AddChargeCountToAppointments < ActiveRecord::Migration[5.1]
  def change
    add_column :appointments, :charges_count, :integer
  end
end
