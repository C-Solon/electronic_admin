class CreateWorkRelationships < ActiveRecord::Migration[5.1]
  def change
    create_table :work_relationships do |t|
      t.integer :professional_id
      t.integer :office_id

      t.timestamps
    end
  end
end
