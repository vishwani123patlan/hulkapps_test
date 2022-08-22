json.extract! post, :id, :title, :date, :author, :description, :tags, :created_at, :updated_at
json.url post_url(post, format: :json)
