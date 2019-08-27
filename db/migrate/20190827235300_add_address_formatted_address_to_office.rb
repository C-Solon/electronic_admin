class AddAddressFormattedAddressToOffice < ActiveRecord::Migration[5.1]
  def change
    add_column :offices, :address_formatted_address, :string
  end
end
