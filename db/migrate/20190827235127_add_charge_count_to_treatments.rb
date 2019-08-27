class AddChargeCountToTreatments < ActiveRecord::Migration[5.1]
  def change
    add_column :treatments, :charges_count, :integer
  end
end
