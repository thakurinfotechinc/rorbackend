json.extract! product, :id, :name, :description, :price, :category, :subcategory, :seller, :created_at, :updated_at
json.url product_url(product, format: :json)
