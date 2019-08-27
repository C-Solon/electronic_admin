class AddWorkRelationshipCountToOffices < ActiveRecord::Migration[5.1]
  def change
    add_column :offices, :work_relationships_count, :integer
  end
end
