class AddSpecializationCountToProfessionals < ActiveRecord::Migration[5.1]
  def change
    add_column :professionals, :specializations_count, :integer
  end
end
