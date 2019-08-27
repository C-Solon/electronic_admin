class AddSpecializationCountToSpecialties < ActiveRecord::Migration[5.1]
  def change
    add_column :specialties, :specializations_count, :integer
  end
end
