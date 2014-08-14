json.array!(@usersprofs) do |usersprof|
  json.extract! usersprof, :id, :name, :telefon, :kartschet
  json.url usersprof_url(usersprof, format: :json)
end
