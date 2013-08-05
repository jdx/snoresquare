json.array!(@checkins) do |checkin|
  json.extract! checkin, :post, :address
  json.url checkin_url(checkin, format: :json)
end
