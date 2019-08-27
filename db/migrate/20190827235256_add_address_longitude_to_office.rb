class AddAddressLongitudeToOffice < ActiveRecord::Migration[5.1]
  def change
    add_column :offices, :address_longitude, :float
  end
end
