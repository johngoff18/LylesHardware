json.extract! deal, :id, :name, :description, :list_price, :sale_price, :purchase_url, :image_url, :created_at, :updated_at
json.url deal_url(deal, format: :json)
