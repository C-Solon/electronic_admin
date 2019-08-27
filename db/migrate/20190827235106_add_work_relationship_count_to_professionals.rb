class AddWorkRelationshipCountToProfessionals < ActiveRecord::Migration[5.1]
  def change
    add_column :professionals, :work_relationships_count, :integer
  end
end
