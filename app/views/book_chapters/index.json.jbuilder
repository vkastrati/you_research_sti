json.array!(@book_chapters) do |book_chapter|
  json.extract! book_chapter, 
  json.url book_chapter_url(book_chapter, format: :json)
end
