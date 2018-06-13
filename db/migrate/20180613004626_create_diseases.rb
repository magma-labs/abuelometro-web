class CreateDiseases < ActiveRecord::Migration[5.2]
  def change
    create_table :diseases do |t|
      t.string :disease_name
      t.float :disease_level
      t.string :disease_description

      t.timestamps
    end
  end
end
