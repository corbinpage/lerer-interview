json.array!(@partners) do |partner|
  json.extract! partner, :id, :name, :description, :owner, :custom1, :custom2, :custom3
  json.url partner_url(partner, format: :json)
end
