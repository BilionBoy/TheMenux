json.extract! product, :id, :category_id, :name, :description, :price, :image, :promotion_active, :promotion_price, :created_at, :updated_at
json.url product_url(product, format: :json)
json.image url_for(product.image)
