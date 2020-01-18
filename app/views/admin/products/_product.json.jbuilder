json.extract! product, :id, :name, :desc, :stock, :status, :created_at, :updated_at
json.url product_url(product, format: :json)
