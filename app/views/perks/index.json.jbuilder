json.array!(@perks) do |perk|
  json.extract! perk, :id, :name, :perk_url, :contact_url, :description, :rating, :status
  json.url perk_url(perk, format: :json)
end
