json.extract! article, :id, :author, :topic, :created_at, :updated_at
json.url article_url(article, format: :json)
