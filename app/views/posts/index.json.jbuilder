json.array!(@posts) do |post|
  json.extract! post, :id, :name, :image, :imagedescription, :video, :description, :category_id, :user_id, :countclick
  json.url post_url(post, format: :json)
end
