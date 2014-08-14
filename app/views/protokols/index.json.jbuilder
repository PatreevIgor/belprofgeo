json.array!(@protokols) do |protokol|
  json.extract! protokol, :id, :number, :description
  json.url protokol_url(protokol, format: :json)
end
