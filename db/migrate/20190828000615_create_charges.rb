class CreateCharges < ActiveRecord::Migration[5.1]
  def change
    create_table :charges do |t|
      t.float :amount
      t.boolean :paid
      t.integer :appointment_id
      t.integer :treatment_id

      t.timestamps
    end
  end
end
