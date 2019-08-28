class AddNoteCountToTreatments < ActiveRecord::Migration[5.1]
  def change
    add_column :treatments, :notes_count, :integer
  end
end
