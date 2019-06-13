json.extract! inventory, :id, :product_name, :in_stock, :committed, :ordered, :available, :created_at, :updated_at
json.url inventory_url(inventory, format: :json)
