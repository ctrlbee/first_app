json.array!(@posts) do |post|
  json.extract! post, :status, :customer_id
  json.url post_url(post, format: :json)
end