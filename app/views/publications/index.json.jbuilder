json.array!(@publications) do |publication|
  json.extract! publication, :type, :author, :title, :year, :publication, :volume, :issue, :page, :keywords, :abstract, :publisher, :placeofpublication, :editor, :seriestitle, :seriesvolume, :seriesissue, :issn, :isbn, :area, :url, :doi
  json.url publication_url(publication, format: :json)
end
