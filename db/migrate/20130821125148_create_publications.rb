class CreatePublications < ActiveRecord::Migration
  def change
    create_table :publications do |t|
      t.string :type
      t.string :author
      t.string :title
      t.string :year
      t.string :publication
      t.string :volume
      t.string :issue
      t.string :page
      t.string :keywords
      t.string :abstract
      t.string :publisher
      t.string :placeofpublication
      t.string :editor
      t.string :seriestitle
      t.string :seriesvolume
      t.string :seriesissue
      t.decimal :issn
      t.decimal :isbn
      t.string :area
      t.string :url
      t.decimal :doi

      t.timestamps
    end
  end
end
