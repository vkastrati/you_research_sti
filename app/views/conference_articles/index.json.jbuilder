json.array!(@conference_articles) do |conference_article|
  json.extract! conference_article, 
  json.url conference_article_url(conference_article, format: :json)
end
