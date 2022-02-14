json.extract! user, :id, :name, :hobby, :grade, :bitemporal_id, :created_at, :updated_at
json.url user_url(user, format: :json)
