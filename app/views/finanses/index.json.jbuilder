json.array!(@finanses) do |finanse|
  json.extract! finanse, :id, :summa, :description
  json.url finanse_url(finanse, format: :json)
end
