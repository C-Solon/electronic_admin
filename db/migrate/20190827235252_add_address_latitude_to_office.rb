class AddAddressLatitudeToOffice < ActiveRecord::Migration[5.1]
  def change
    add_column :offices, :address_latitude, :float
  end
end
