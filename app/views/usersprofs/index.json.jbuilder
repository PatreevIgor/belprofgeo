json.array!(@usersprofs) do |usersprof|
  json.extract! usersprof, :id, :name, :telefon, :kartschet, :date_of_birth
  json.url usersprof_url(usersprof, format: :json)
end
