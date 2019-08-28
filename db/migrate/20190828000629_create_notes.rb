class CreateNotes < ActiveRecord::Migration[5.1]
  def change
    create_table :notes do |t|
      t.integer :treatment_id
      t.string :photo
      t.text :comments

      t.timestamps
    end
  end
end
