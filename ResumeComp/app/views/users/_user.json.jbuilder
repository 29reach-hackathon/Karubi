json.extract! user, :id, :full_name, :full_name_kana, :created_at, :updated_at
json.url user_url(user, format: :json)
