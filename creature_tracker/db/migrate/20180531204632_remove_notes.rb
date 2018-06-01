class RemoveNotes < ActiveRecord::Migration[5.2]
  def change
    remove_column :creatures, :notes, :string
  end
end
