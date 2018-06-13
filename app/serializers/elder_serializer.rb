class ElderSerializer < ActiveModel::Serializer
  attributes :id, :name, :first_name, :last_name,
    :blood_type, :birthdate, :weight, :height,
    :created_at, :updated_at
end
