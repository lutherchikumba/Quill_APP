json.extract! topic, :id, :author, :title, :text, :created_at, :updated_at
json.url topic_url(topic, format: :json)
