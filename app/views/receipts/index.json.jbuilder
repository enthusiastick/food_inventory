json.array!(@receipts) do |receipt|
  json.extract! receipt, :id, :description, :quantity, :food_id
  json.url receipt_url(receipt, format: :json)
end
