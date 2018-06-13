class AddElderToRelatives < ActiveRecord::Migration[5.2]
  def change
    add_reference :relatives, :elder, foreign_key: true
  end
end
