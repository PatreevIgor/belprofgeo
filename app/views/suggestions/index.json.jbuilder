json.array!(@suggestions) do |suggestion|
  json.extract! suggestion, :id, :fio, :description
  json.url suggestion_url(suggestion, format: :json)
end
