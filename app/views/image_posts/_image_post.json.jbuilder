json.extract! image_post, :id, :caption, :link, :created_at, :updated_at
json.url image_post_url(image_post, format: :json)
