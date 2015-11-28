json.array!(@articles) do |article|
  json.extract! article, :id, :title, :description, :story, :like, :dislike, :view
  json.url article_url(article, format: :json)
end
