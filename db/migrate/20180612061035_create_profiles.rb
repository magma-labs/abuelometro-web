class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :profile_name
      t.string :profile_first_name
      t.string :profile_second_name
      t.string :profile_phone

      t.timestamps
    end
  end
end
