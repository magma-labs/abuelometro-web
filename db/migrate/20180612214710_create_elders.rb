class CreateElders < ActiveRecord::Migration[5.2]
  def change
    create_table :elders do |t|
      t.string :elder_name
      t.string :elder_first_name
      t.string :elder_last_name
      t.string :elder_bloond_type
      t.date :elder_birthdate
      t.decimal :elder_weight
      t.decimal :elder_height

      t.timestamps
    end
  end
end
