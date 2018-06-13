class CreateElders < ActiveRecord::Migration[5.2]
  def change
    create_table :elders do |t|
      t.string :name
      t.string :first_name
      t.string :last_name
      t.string :blood_type
      t.date :birthdate
      t.decimal :weight
      t.decimal :height

      t.timestamps
    end
  end
end
