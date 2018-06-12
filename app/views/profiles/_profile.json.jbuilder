json.extract! profile, :id, :profile_name, :profile_first_name, :profile_second_name, :profile_phone, :created_at, :updated_at
json.url profile_url(profile, format: :json)
