json.extract! article, :id, :author, :title, :text, :created_at, :updated_at
json.url article_url(article, format: :json)
