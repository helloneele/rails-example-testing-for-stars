json.array!(@users) do |user|
  json.extract! user, :id, :first_name, :middle_initial, :last_name, :no_stars
  json.url user_url(user, format: :json)
end
