json.array!(@profiles) do |profile|
  json.extract! profile, :id, :name, :age, :about_me, :profile_image_id, :user_id
  json.url profile_url(profile, format: :json)
end
