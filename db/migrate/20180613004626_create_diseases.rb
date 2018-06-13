class CreateDiseases < ActiveRecord::Migration[5.2]
  def change
    create_table :diseases do |t|
      t.string :name
      t.float :level
      t.string :description

      t.timestamps
    end
  end
end
