json.array!(@items) do |item|
  json.extract! item, :id, :product_id, :basket_id
  json.url item_url(item, format: :json)
end
