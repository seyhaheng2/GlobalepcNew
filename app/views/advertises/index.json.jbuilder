json.array!(@advertises) do |advertise|
  json.extract! advertise, :id, :name, :image, :category_id
  json.url advertise_url(advertise, format: :json)
end
