json.array!(@book_wholes) do |book_whole|
  json.extract! book_whole, 
  json.url book_whole_url(book_whole, format: :json)
end
