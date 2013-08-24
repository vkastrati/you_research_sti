json.array!(@journal_articles) do |journal_article|
  json.extract! journal_article, 
  json.url journal_article_url(journal_article, format: :json)
end
