class AddElderIdToDiseases < ActiveRecord::Migration[5.2]
  def change
    add_reference :diseases, :elders, foreign_key: true
  end
end
