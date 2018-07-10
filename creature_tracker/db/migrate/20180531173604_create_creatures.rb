class CreateCreatures < ActiveRecord::Migration[5.2]
  def change
    create_table :creatures do |t|
      t.string :common_name
      t.string :scientific_name
      t.string :notes
      t.string :status

      t.timestamps
    end
  end
end
