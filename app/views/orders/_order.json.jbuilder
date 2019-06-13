json.extract! order, :id, :product, :quantity, :inventory_id, :created_at, :updated_at
json.url order_url(order, format: :json)
