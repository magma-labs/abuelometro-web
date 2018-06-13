class ElderSerializer < ActiveModel::Serializer
  attributes :id, :elder_name, :elder_first_name, :elder_last_name,
    :elder_bloond_type, :elder_birthdate, :elder_weight, :elder_height,
    :created_at, :updated_at
end
