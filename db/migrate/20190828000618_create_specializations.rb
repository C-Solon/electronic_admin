class CreateSpecializations < ActiveRecord::Migration[5.1]
  def change
    create_table :specializations do |t|
      t.integer :professional_id
      t.integer :specialty_id

      t.timestamps
    end
  end
end
