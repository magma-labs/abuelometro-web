class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :first_name, :second_name,
    :phone, :role, :email, :password,
    :created_at, :updated_at
end
