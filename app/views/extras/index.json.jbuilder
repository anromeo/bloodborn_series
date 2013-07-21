json.array!(@extras) do |extra|
  json.extract! extra, :information
  json.url extra_url(extra, format: :json)
end